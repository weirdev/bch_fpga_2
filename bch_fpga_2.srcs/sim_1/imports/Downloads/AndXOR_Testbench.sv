`timescale 1ns / 1ps

// Basic example of a hardware design that includes a custom AXI4 peripheral
// The testbench uses the Zynq VIP for full system simulation
module AndXOR_Testbench;
    logic tb_ACLK;
    logic tb_ARESETn;
   
    wire temp_clk;
    wire temp_rstn; 
   
    logic [31:0] read_data;
    logic [31:0] last_read;
    logic [31:0] ready;
    logic [1:0] resp;

    logic [31:0] last_valid;
    
    logic [31:0] encoded0;
    logic [31:0] encoded1;
    
    int fileid, temp;
    logic [504*8 - 1 : 0] generatormatrix;
    
    int i;
   
    //parameter genmatfile = "H:\dev\CSASA\ecc-lib\pyGF\63_45_matrix";
    // "C:\Users\Wesley\dev\ecc-lib\pyGF\63_45_matrix"
    
    //------------------------------------------------------------------------
    // Simple Clock Generator
    //------------------------------------------------------------------------
    
    always begin 
        tb_ACLK= 1'b0; #10; tb_ACLK = 1'b1; #10;
    end
	
	initial 
    begin
    /*
	`ifndef XILINX_SIMULATOR
	       // Cannot find documentation for `fatal_to_warnings`, not in linked pdf
           AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.M_AXI_GP0.master.IF.PC.fatal_to_warnings=1;
           #40;
           AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.M_AXI_GP0.master.IF.PC.fatal_to_warnings=0;
	 `endif 		
    end
    */
    `define waitForReady \
        $display("Waiting for InputReady"); \
         while((ready & 1) != 1) begin \
                        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.read_data(32'h43C0000c, 8'h4, ready, resp); \
                         #10; \
         end \
         ready = 0;
    end
    initial
    begin
        last_valid = 0;
        $display ("running the tb");
        
        tb_ARESETn = 1'b0;
        repeat(2)@(posedge tb_ACLK);        
        tb_ARESETn = 1'b1;
        @(posedge tb_ACLK);
        
        repeat(5) @(posedge tb_ACLK);
          
        // Reset the PL, Counter to 0 (reset signal to 1)
        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.fpga_soft_reset(32'h1);
        // Reset signal back to 0
        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.fpga_soft_reset(32'h0);

        repeat(5) @(posedge tb_ACLK);
        
        //AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.pre_load_mem_from_file(genmatfile, 32'h40000000, 386);
        
        // Read generator matrix file
        fileid = $fopen("H:/dev/CSASA/ecc-lib/pyGF/63_45_matrix_memory", "rb");
        //fileid = $fopen("C:/Users/Wesley/dev/ecc-lib/pyGF/63_45_matrix_memory", "rb");
        temp = $fread(generatormatrix, fileid);
        $display("1");
        // Load generator matrix into BRAM (504) total bytes
        for (i=0; i<504; i=i+4) begin
            AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.write_data(32'h4000_0000+i, 4, generatormatrix[i*8+:32], resp);
            #10;
            $display(i);
        end
        $display("done genmat");
        // Load test input (all 1's) into BRAM (2 words, only first 45 bits matter)
        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.write_data(32'h400001f8, 4, 32'hffff_ffff, resp);
        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.write_data(32'h400001fc, 4, 32'hffff_ffff, resp);
        `waitForReady
        // Input IVCW length to AXI = {2 words vector len, 3f=63 bits in codeword}
        $display("3b");
        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.write_data(32'h43C00004, 8'h4, 2, resp);
        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.write_data(32'h43C00008, 8'h4, 63, resp);
        $display("4");
        // Write valid to slv_reg3
        last_valid ^= 1;
        $display("5");
        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.write_data(32'h43C0000c, 8'h4, last_valid, resp);
        #100
        $display("6");
        // Process and wait for completion
        `waitForReady
        $display("7");
        // Read output
        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.read_data(32'h40000200, 4, encoded0, resp);
        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.read_data(32'h40000204, 4, encoded1, resp);
        $display("8");
        $display(encoded0[8:0]);
        
       /*
       // Read the current value of the counter, no change to Counter
        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.read_data(32'h43C00004,4,read_data,resp);
        // expect something larger than 5
        $display ("%t, running the testbench, data read from Counter was 32'h%x",$time, read_data);
        if (read_data < 5) begin
             $display("FAILED: expected data to be >= 5");
             $stop;
        end
        last_read = read_data;
        
        repeat(30) @(posedge tb_ACLK);
        // Read the current value of the counter, no change to Counter
        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.read_data(32'h43C00004,4,read_data,resp);
        // expect previous + 30
        $display ("%t, running the testbench, data read from Counter was 32'h%x",$time, read_data);
        if (read_data <= last_read) begin
            $display("FAILED: expected data to be > %d", last_read);
            $stop;
        end
        last_read = read_data;

        // user counter reset
        $display("User resets the counter to 0");
        // Reset signal to 1, Counter reset to zero
       AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.write_data(32'h43C00000,4, 32'h00000001, resp);
       repeat(5) @(posedge tb_ACLK);
       // Reset signal back to 0
       AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.write_data(32'h43C00000,4, 32'h00000000, resp);
       
       repeat(5) @(posedge tb_ACLK);

        // Read the current value of the counter, no change to Counter
        AndXOR_Testbench.zynq_sys.system_axo_axi_i.processing_system7_0.inst.read_data(32'h43C00004,4,read_data,resp);
        // expect something smaller
        $display ("%t, running the testbench, data read from Counter was 32'h%x",$time, read_data);
        if (read_data >= last_read) begin
              $display("FAILED: expected data to be < %d", last_read);
              $stop;
        end
        */
        $finish;
    end

    assign temp_clk = tb_ACLK;
    assign temp_rstn = tb_ARESETn;
   
system_axo_axi_wrapper zynq_sys(
    .DDR_addr(),
    .DDR_ba(),
    .DDR_cas_n(),
    .DDR_ck_n(),
    .DDR_ck_p(),
    .DDR_cke(),
    .DDR_cs_n(),
    .DDR_dm(),
    .DDR_dq(),
    .DDR_dqs_n(),
    .DDR_dqs_p(),
    .DDR_odt(),
    .DDR_ras_n(),
    .DDR_reset_n(),
    .DDR_we_n(),
    .FIXED_IO_ddr_vrn(),
    .FIXED_IO_ddr_vrp(),
    .FIXED_IO_mio(),
    .FIXED_IO_ps_clk(temp_clk),
    .FIXED_IO_ps_porb(temp_rstn),
    .FIXED_IO_ps_srstb(temp_rstn)
    );

endmodule
