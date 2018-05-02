#pragma once

#ifndef ECCLIB_H
#define ECCLIB_H

#include <string>
#include <vector>
#include "xparameters.h"
//#include "stdio.h"

#define BRAM_MEMORY XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#define BRAM_MEMORY_LAST_WORD (XPAR_AXI_BRAM_CTRL_0_S_AXI_HIGHADDR-3)

// you want to avoid writing over our  program
// since in the standalone/baremetal mode there is no memory protection
#define DDR_MEMORY XPAR_PS7_DDR_0_S_AXI_BASEADDR+0x00020000 // pass all code and data sections

#define ANDXOR_AXI_BASEADDR 0x43C00000
#define BRAM_TOENCODE_ADDR BRAM_MEMORY+504
#define BRAM_ENCODED_ADDR BRAM_TOENCODE_ADDR+8


namespace EccLib
{
	class BinaryMatrix;
	class GFMatrix;
	class GaloisField;

	class Functions
	{
	public:
		static void DummyEncode(unsigned char data[20], unsigned char encoded[20]);
		static void DummyDecode(unsigned char data[20], unsigned char decoded[20]);
	};

	class BCH
	{
	public:
		BCH(std::vector<unsigned char> &generatormatrixfile, std::vector<unsigned char> &paritycheckmatrixfile, int m, int t);
		unsigned char* Encode(unsigned char* data);
		unsigned char* Decode(unsigned char* data);

		// Temporarily public for testing
		unsigned char** ComputeSyndrome(unsigned char* data);
		bool CheckSyndrome(unsigned char** syndrome);
		std::vector<unsigned char*> ComputeErrorLocationPolynomial(unsigned char** syndrome);
		std::string GFPolynomialToStr(std::vector<unsigned char*> p);

		GaloisField* _gf;
	private:
		//BinaryMatrix* _generatormatrix;
		GFMatrix* _paritycheckmatrix;
		int t;
		int m;
		int m_bytes;

		void LoadBRAM_w_GenMat(std::vector<unsigned char> &generatormatrixfile);
		std::vector<unsigned char*> SumGFPolynomials(std::vector<unsigned char*> p1, std::vector<unsigned char*> p2);
		bool CheckGFPolynomialRoot(std::vector<unsigned char*> poly, unsigned char* root);
	};
}


#endif
