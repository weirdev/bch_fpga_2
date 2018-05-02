#include "ecclib.h"
#include "BinaryMatrix.h"
#include "GaloisField.h"
#include "GFMatrix.h"

namespace EccLib
{
	void Functions::DummyEncode(unsigned char data[20], unsigned char encoded[20])
	{
		for (int i = 0; i < 20; i++)
		{
			encoded[i] = data[i];
		}
	}

	void Functions::DummyDecode(unsigned char data[20], unsigned char decoded[20])
	{
		for (int i = 0; i < 20; i++)
		{
			decoded[i] = data[i];
		}
	}

	BCH::BCH(std::vector<unsigned char> &generatormatrixfile, std::vector<unsigned char> &paritycheckmatrixfile, int m, int t)
	{
		//this->_generatormatrix = BinaryMatrix::Load(generatormatrixfile);
		this->LoadBRAM_w_GenMat(generatormatrixfile);
		this->_paritycheckmatrix = GFMatrix::Load(paritycheckmatrixfile);
		this->t = t;
		this->m = m;
		this->m_bytes = m / 8;
		if (m % 8 != 0)
		{
			this->m_bytes++;
		}
		this->_gf = new GaloisField(this->_paritycheckmatrix->primitive_polynomial, m);
	}

	void BCH::LoadBRAM_w_GenMat(std::vector<unsigned char> &generatormatrixfile)
	{
		int num = generatormatrixfile.size() / 4;
		int * gmwordarray = new int[num];
		for (unsigned int i=0; i<generatormatrixfile.size(); i=i+4) {
			int newword = 0;
			for (int j=0; j<4; j++) {
				newword <<= 8;
				newword |= generatormatrixfile[i+j];
			}
			gmwordarray[i/4] = newword;
		}


		int * source;
		int * destination;
		source = &gmwordarray[0];
		destination = (int*)BRAM_MEMORY;
		int mpos;
		for (mpos=0; mpos<num; mpos++) {
			//xil_printf("transferring %d\r\n",i);
			*(destination+mpos) = *(source+mpos);
		}
	}

	// TODO: Use redundant only generating matrix and return only redundant data
	unsigned char* BCH::Encode(unsigned char* data)
	{
		int * source;
		int * destination;
		source = (int *)&data[0];
		destination = (int*)BRAM_TOENCODE_ADDR;
		// Write vector to encode to BRAM
		for (int i=0; i<2; i++)
		{
			*(destination+i) = *(source+i);
		}
		int * axireadyvalidaddr = (int*)ANDXOR_AXI_BASEADDR;
		axireadyvalidaddr += 3;
		// Wait for ready
		while (((*axireadyvalidaddr) & 1) != 1) {}

		// Write needed parameters
		int ivlen_wrds = 2;
		int cwlen_bits = 63;

		destination = (int*)ANDXOR_AXI_BASEADDR + 1;
		*destination = ivlen_wrds;

		destination = (int*)ANDXOR_AXI_BASEADDR + 2;
		*destination = cwlen_bits;



		// Set valid
		*(axireadyvalidaddr) = 1;
		// Wait for ready
		while (((*axireadyvalidaddr) & 1) != 1) {}
		int * encodedwords = new int[2];
		source = (int*)BRAM_ENCODED_ADDR;
		for (int i=0; i<2; i++) {
			encodedwords[i] = *(source+1);
		}
		return (unsigned char*)encodedwords;
	}

	unsigned char* BCH::Decode(unsigned char* data)
	{
		unsigned char** syndrome = ComputeSyndrome(data);
		if (CheckSyndrome(syndrome))
		{
			return data;
		}
		std::vector<unsigned char*> elp = ComputeErrorLocationPolynomial(syndrome);
		int databitlen = (1 << m) - 1;
		int databytelen = (databitlen + 1) / 8;
		unsigned char* decoded = new unsigned char[databytelen];
		for (int i = 0; i < databytelen - 1; i++)
		{
			unsigned char nextbyte = data[i];
			unsigned char flipbit = 1;
			for (int j = 0; j < 8; j++)
			{
				if (CheckGFPolynomialRoot(elp, this->_gf->GF[databitlen - (i * 8) - j + 1]))
				{
					nextbyte ^= flipbit;
				}
				flipbit <<= 1;
			}
			decoded[i] = nextbyte;
		}
		unsigned char nextbyte = data[databytelen - 1];
		unsigned char flipbit = 1;
		for (int j = 0; j < 7; j++)
		{
			if (CheckGFPolynomialRoot(elp, this->_gf->GF[7 + 1 - j]))
			{
				nextbyte ^= flipbit;
			}
			flipbit <<= 1;
		}
		decoded[databytelen - 1] = nextbyte;
		return decoded;
	}

	unsigned char** BCH::ComputeSyndrome(unsigned char* data)
	{
		return this->_paritycheckmatrix->MultiplyVector(data);
	}

	bool BCH::CheckSyndrome(unsigned char** syndrome) 
	{
		for (int i = 0; i < this->t * 2; i++)
		{
			if (!GFMatrix::ElementZero(syndrome[i], this->m))
			{
				return false;
			}
		}
		return true;
	}
	
	// Implements the Berlekamp-Massey algorithm
	std::vector<unsigned char*> BCH::ComputeErrorLocationPolynomial(unsigned char** syndrome)
	{
		std::vector<std::vector<unsigned char*>> errorlocpolys;
		errorlocpolys.resize(this->t + 2);
		std::vector<unsigned char*> discreps;
		discreps.resize(this->t + 1);
		std::vector<int> stepdegreediff;
		stepdegreediff.resize(this->t + 2);

		// NOTE: For below k=-1/2 => 0 and all other k => k + 1 (k literature => k array indices)
		// k=-1/2 partial error location polynomial = 1
		errorlocpolys[0].push_back(new unsigned char[this->m_bytes]);
		errorlocpolys[0][0][0] = 1;
		for (int e = 1; e < this->m_bytes; e++)
		{
			errorlocpolys[0][0][e] = 0;
		}
		// k=-1/2 discrepancy = 1
		discreps[0] = new unsigned char[this->m_bytes];
		discreps[0][0] = 1;
		for (int e = 1; e < this->m_bytes; e++)
		{
			discreps[0][e] = 0;
		}
		// k=-1/2 step/degree difference = -1
		stepdegreediff[0] = -1;

		// k=0 partial ELP = 1 (same as k=-1/2)
		errorlocpolys[1] = errorlocpolys[0];

		// k=0 discrepancy = S[0]
		discreps[1] = syndrome[0];
		stepdegreediff[1] = 0;

		// Index of max step/degree difference where the discrepency != 0
		int maxstepdegdiffloc = 0;
		
		for (int k = 1; k < this->t+1; k++)
		{
			discreps[k] = new unsigned char[this->m_bytes];
			for (int e = 0; e < this->m_bytes; e++)
			{
				discreps[k][e] = syndrome[2 * (k - 1)][e];
			}
			for (unsigned int d = 1; d < errorlocpolys[k].size(); d++)
			{
				unsigned char* newterm = this->_gf->MultiplyGFElements(errorlocpolys[k][d], syndrome[2 * (k - 1) - d]);
				for (int e = 0; e < this->m_bytes; e++)
				{
					discreps[k][e] ^= newterm[e];
				}
			}
			if (this->_gf->GFElementsEqual(discreps[k], this->_gf->GF[0])) // if discreps[k] == 0 (GF)
			{
				errorlocpolys[k + 1] = errorlocpolys[k];
				stepdegreediff[k + 1] = stepdegreediff[k] + 2;
			}
			else 
			{
				int maxstepdegdiff = stepdegreediff[maxstepdegdiffloc];
				for (int i = maxstepdegdiffloc; i < k; i++)
				{
					if (stepdegreediff[i] > maxstepdegdiff)
					{
						if (!this->_gf->GFElementsEqual(discreps[i], 
							this->_gf->GF[0])) // discreps[i] != 0 (GF)
						{
							maxstepdegdiff = stepdegreediff[i];
							maxstepdegdiffloc = i;
						}
					}
				}

				unsigned char* product = this->_gf->MultiplyGFElements(discreps[k], 
					this->_gf->InvertGFElement(discreps[maxstepdegdiffloc]));
				std::vector<unsigned char*> correctionterm;
				int correctionshift;
				if (maxstepdegdiffloc != 0)
				{
					correctionshift = 2 * (k - maxstepdegdiffloc);
				}
				else
				{
					// Handle maxstepdegreediff at k=-1/2
					correctionshift = 2 * ((k - 1) + 0.5);
				}
				for (int i = 0; i < correctionshift; i++)
				{
					correctionterm.push_back(this->_gf->GF[0]);
				}
				for (unsigned int i = 0; i < errorlocpolys[maxstepdegdiffloc].size(); i++)
				{
					correctionterm.push_back(this->_gf->MultiplyGFElements(
						errorlocpolys[maxstepdegdiffloc][i], product));
				}
				errorlocpolys[k + 1] = SumGFPolynomials(errorlocpolys[k], 
					correctionterm);
				// Find degree of new poly
				int degree = 0;
				for (int i = errorlocpolys[k + 1].size() - 1; i >= 0; i--)
				{
					if (!this->_gf->GFElementsEqual(errorlocpolys[k + 1][i], 
						this->_gf->GF[0]))
					{
						degree = i;
						break;
					}
				}
				errorlocpolys[k + 1].resize(degree + 1);
				stepdegreediff[k + 1] = 2 * k - degree;
			}
		}
		return errorlocpolys[this->t + 1];
	}

	std::string BCH::GFPolynomialToStr(std::vector<unsigned char*> p)
	{
		std::string s = "";
		for (unsigned int i = 0; i < p.size(); i++)
		{
			s += this->_gf->GFElementToStr(p[i]);
			s += "\n";
		}
		return s;
	}

	std::vector<unsigned char*> BCH::SumGFPolynomials(std::vector<unsigned char*> p1, std::vector<unsigned char*> p2)
	{
		std::vector<unsigned char*> larger;
		std::vector<unsigned char*> smaller;
		if (p1.size() > p2.size())
		{
			larger = p1;
			smaller = p2;
		}
		else
		{
			larger = p2;
			smaller = p1;
		}
		std::vector<unsigned char*> sum;
		unsigned int i;
		for (i = 0; i < smaller.size(); i++)
		{
			unsigned char* termsum = new unsigned char[this->m_bytes];
			for (int e = 0; e < this->m_bytes; e++)
			{
				termsum[e] = larger[i][e] ^ smaller[i][e];
			}
			sum.push_back(termsum);
		}
		for (; i < larger.size(); i++)
		{
			sum.push_back(larger[i]);
		}
		return sum;
	}
	bool BCH::CheckGFPolynomialRoot(std::vector<unsigned char*> poly, unsigned char* root)
	{
		unsigned char* sum = new unsigned char[this->m_bytes];
		for (int e = 0; e < this->m_bytes; e++)
		{
			sum[e] = 0;
		}
		for (unsigned int i = 0; i < poly.size(); i++)
		{
			if (!this->_gf->GFElementsEqual(poly[i], this->_gf->GF[0]))
			{
				unsigned char* prod = this->_gf->MultiplyGFElements(this->_gf->GFElementPow(root, i), poly[i]);
				for (int e = 0; e < this->m_bytes; e++)
				{
					sum[e] ^= prod[e];
				}
			}
		}
		bool isroot = this->_gf->GFElementsEqual(sum, this->_gf->GF[0]);
		delete sum;
		return isroot;
	}
}