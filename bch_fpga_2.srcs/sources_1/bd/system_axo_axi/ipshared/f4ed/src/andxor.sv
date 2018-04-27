`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2018 08:44:15 PM
// Design Name: 
// Module Name: Engine
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module andxor
    (
     input [31:0] ReadData,
  // The clock
     input CLK,
  // active low reset
     input areset,
     // { # 32-bit words in vector, # bits in codeword}
     input [31:0] IVLength,
     input [31:0] CWLength,
  // Address of next set of inputs
     output [31:0] AddressOut,
     output [31:0] DataOut,
  // if 1 then output pixel is valid, if 0 then ignore output
     output DataOutWrite,
  // set to 1 if X0,Y0,X1,Y1,color are valid, 0 otherwise
     input InputValid,
  // if 1 then engine is ready for new inputs, if 0 then input must not change
     output InputReady
    );
    
    logic [3:0] state = 0;
    logic [3:0] nextState;
    logic s;
    logic [31:0] addrout;
    
    // Each of these are in bytes
    logic [5:0] bitpos;
    logic [31:0] OutputWord;
    logic [31:0] VectorStart;
    logic [31:0] VectorEnd;
    logic [31:0] MatrixEnd;
    
    logic [31:0] VectorPosition;
    logic [31:0] MatrixPosition;
    logic [31:0] WritePosition;
    
    logic [31:0] MatrixWord;
    
    logic [31:0] vend;
    logic [31:0] mend;
    
    wire [31:0] andprod = MatrixWord & ReadData;
    wire [31:0] orsum = andprod[0] ^ andprod[1] ^ andprod[2] ^ andprod[3] ^ andprod[4] ^ andprod[5] ^ andprod[6] ^ andprod[7]
                            ^ andprod[8] ^ andprod[9] ^ andprod[10] ^ andprod[11] ^ andprod[12] ^ andprod[13] ^ andprod[14] ^ andprod[15]
                            ^ andprod[16] ^ andprod[17] ^ andprod[18] ^ andprod[19] ^ andprod[20] ^ andprod[21] ^ andprod[22] ^ andprod[23]
                            ^ andprod[24] ^ andprod[25] ^ andprod[26] ^ andprod[27] ^ andprod[28] ^ andprod[29] ^ andprod[30] ^ andprod[31];
    
    always_ff@(posedge CLK) begin
        if (areset == 1'b1) begin
            state <= 0;
        end else begin
            case(state)
                4'b0000: begin
                    VectorStart <= mend;
                    VectorEnd <= vend;
                    MatrixPosition <= 0;
                    MatrixEnd <= mend;
                    WritePosition <= vend;
                  end
                4'b0001: begin
                    bitpos <= 0;
                    OutputWord <= 0;
                  end
                4'b0010: begin
                    VectorPosition <= VectorStart;
                    s <= 0;
                    addrout <= MatrixPosition;
                    MatrixPosition <= MatrixPosition + 4;
                  end
                4'b0100: begin
                    MatrixWord <= ReadData;
                    addrout <= VectorPosition;
                    VectorPosition <= VectorPosition + 4;
                  end
                4'b0110: begin
                    s <= s ^ orsum;
                    addrout <= MatrixPosition;
                  end
                4'b0111: MatrixPosition <= MatrixPosition + 4;
                4'b1000: begin
                    OutputWord[bitpos] <= s;
                    bitpos <= bitpos + 1;
                  end
                4'b1001: begin
                    addrout <= WritePosition;
                    WritePosition <= WritePosition + 4;
                  end
            endcase
            state <= nextState;
        end
    end
    
    // Output logic
    assign DataOutWrite = (state == 4'b1010) ? 1'b1 : 1'b0;
    assign InputReady = (state == 0) ? 1'b1 : 1'b0;
    assign DataOut = OutputWord;
    assign AddressOut = addrout;
    
    // Next state logic
    always_comb begin
        case(state)
            4'b0000: 
                begin
                    mend = (IVLength * 4 * CWLength);
                    vend = mend + IVLength * 4;
                    if (InputValid == 1'b1) nextState = 4'b0001;
                    else nextState = 4'b0000;
                end
            4'b0001: nextState = 4'b0010;
            4'b0010: nextState = 4'b0011;
            4'b0011: nextState = 4'b0100; // Skip cycle for addrout
            4'b0100: nextState = 4'b0101;
            4'b0101: nextState = 4'b0110; // Skip cycle for addrout
            4'b0110:
                if (VectorPosition < VectorEnd) nextState = 4'b0111;
                else nextState = 4'b1000;
            4'b0111: nextState = 4'b0100; // Skip cycle for addrout
            4'b1000:
                if ((bitpos < 31) && (MatrixPosition < MatrixEnd)) nextState = 4'b0010;
                else nextState = 4'b1001;
            4'b1001: nextState = 4'b1010;
            4'b1010: // Skip cycle for addrout
                if (MatrixPosition < MatrixEnd) nextState = 4'b0001;
                else nextState = 4'b0000; 
        endcase
    end
    
endmodule
