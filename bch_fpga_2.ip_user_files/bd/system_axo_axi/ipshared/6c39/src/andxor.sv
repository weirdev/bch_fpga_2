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
    
    logic [2:0] state = 0;
    logic [2:0] nextState;
    logic s;
    logic [31:0] addrout;
    
    // Each of these are in bytes
    logic [4:0] bitpos;
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
            state <= 3'b000;
        end else begin
            case(state)
                3'b001: begin
                    bitpos <= 0;
                    OutputWord <= 0;
                    VectorStart <= 0;
                    VectorEnd <= vend;
                    MatrixPosition <= vend;
                    MatrixEnd <= mend;
                    WritePosition <= mend;
                  end
                3'b010: begin
                    VectorPosition <= VectorStart;
                    s <= 0;
                    addrout <= MatrixPosition;
                    MatrixPosition <= MatrixPosition + 4;
                  end
                3'b011: begin
                    MatrixWord <= ReadData;
                    addrout <= VectorPosition;
                    VectorPosition <= VectorPosition + 4;
                  end
                3'b100: begin
                    s <= s ^ orsum;
                    addrout <= MatrixPosition;
                    MatrixPosition <= MatrixPosition + 4;
                  end
                3'b101: begin
                    OutputWord[bitpos] <= s;
                    bitpos <= bitpos + 1;
                  end
                3'b110: begin
                    addrout <= WritePosition;
                    WritePosition <= WritePosition + 4;
                  end
            endcase
            state <= nextState;
        end
    end
    
    // Output logic
    assign DataOutWrite = (state == 3'b110) ? 1'b1 : 1'b0;
    assign InputReady = (state == 2'b00) ? 1'b1 : 1'b0;
    assign DataOut = OutputWord;
    assign AddressOut = addrout;
    
    // Next state logic
    always_comb begin
        case(state)
            3'b000: 
                if (InputValid == 1'b1) nextState = 3'b001;
                else nextState = 3'b000;
            3'b001: begin
                vend = IVLength * 4;
                mend = vend + (vend * CWLength);
                nextState = 3'b010;
              end
            3'b010: nextState = 3'b011;
            3'b011: nextState = 3'b100;
            3'b100:
                if (VectorPosition < VectorEnd) nextState = 3'b011;
                else nextState = 3'b101;
            3'b101:
                if ((bitpos <= 32) && (MatrixPosition < MatrixEnd)) nextState = 3'b010;
                else nextState = 3'b110;
            3'b110:
                if (MatrixPosition < MatrixEnd) nextState = 3'b001;
                else nextState = 3'b000;            
        endcase
    end
    
endmodule
