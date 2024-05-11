`timescale 1ns / 1ps

// TODO: CHANGE TB to transmit big endian first instead of the other way around!

module uart_top_TB ();
 
  // comes out to 10 CLKS_PER_BIT
  localparam CLK_FREQ_inst  = 100;
  localparam BAUD_RATE_inst = 10; 
  localparam ADDER_WIDTH = 64; // in bytes
  localparam OPERAND_WIDTH = 128; // in bytes
  
  // Define signals for module under test
  reg  rClk = 0;
  reg  rRst = 0;
  wire wTx, wTxSerial, wTxDone;
  reg rTxStart;
  reg [7:0] rTxByte;
  reg [OPERAND_WIDTH-1:0] rOpA, rOpB;
  reg opFlag = 0; // ropa transmission = 0, ropb transmission = 1
  
    

  
    uart_tx #( .CLK_FREQ(CLK_FREQ_inst), .BAUD_RATE(BAUD_RATE_inst) ) 
  UART_TX_INST
    (.iClk(rClk),
     .iRst(rRst),
     .iTxStart(rTxStart),
     .iTxByte(rTxByte),
     .oTxSerial(wTxSerial),
     .oTxDone(wTxDone)
     );
     
     
  // Instantiate DUT  
  uart_top 
  #( .NBYTES(2), .CLK_FREQ(CLK_FREQ_inst), .NBYTES(16), .BAUD_RATE(BAUD_RATE_inst), .OPERAND_WIDTH(OPERAND_WIDTH), .ADDER_WIDTH(ADDER_WIDTH))
  uart_top_inst
  ( .iClk(rClk), .iRst(rRst), .iRx(wTxSerial), .oTx(wTx) );
  
  // Define clock signal
  localparam CLOCK_PERIOD = 5;
  
  always
    #(CLOCK_PERIOD/2) rClk = !rClk;
  
  reg [31:0] i = 119; // Declare a register to hold the value of 'i'

  always @(posedge wTxDone) begin
    
    if (opFlag == 0) begin // transmission operand a
        rTxByte = rOpA[i -: 8]; // Select 8 bits from operand A starting from index 'i'
        if (i == -1) begin // transmission of op b first byte.
            i = 119;
            opFlag = 1;
            rTxByte = rOpB[(i+8) -:8];
            rTxStart = 1;
            #(2*CLOCK_PERIOD);
            rTxStart = 0;   
        end
        else begin // transmission operand
            rTxStart = 1;
            i = i - 8;
            #(2*CLOCK_PERIOD);
            rTxStart = 0;
        end
        

    end
    else begin // transmission operand B
        rTxByte = rOpB[i -:8];
        if (i == -1)
            i = 127;
        else begin
            rTxStart = 1;
            #(2*CLOCK_PERIOD);
            rTxStart = 0;
            i = i - 8;
        end
    end
    
  end
 
  always @(posedge rClk) begin
    if (i == 125) begin
        $display("value of i = %0d", i);
        // Additional actions here if needed
    end
end

 
  initial begin
    rTxStart = 0;
//    rOpA = 128'h12121212_34343434_56565656_78787878;
//    rOpB = 128'hefefefef_cdcdcdcd_abababab_90909090;
    rOpA = 5;
    rOpB = 6;
    rTxByte = rOpA[127:120];
    rRst = 0;
    
    #(CLOCK_PERIOD);
    
    rRst = 1;
    #(5*CLOCK_PERIOD);
    
    // start transmission
    rRst = 0;
    rTxStart = 1;
    #(CLOCK_PERIOD);
    rTxStart = 0;
    

    
   end

endmodule
