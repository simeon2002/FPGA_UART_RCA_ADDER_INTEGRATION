`timescale 1ns / 1ps


module carry_select_adder_cla#(
    parameter ADDER_WIDTH = 32,  // total width of the adder (N)
    parameter BLOCK_SIZE = 4  // number of bits per each sub-adder (M)
    )
    (
    input wire [ADDER_WIDTH-1:0] iA,
    input wire [ADDER_WIDTH-1:0] iB,
    input wire iCarry,
    output wire [ADDER_WIDTH-1:0] oSum,
    output wire oCarry
    );
    localparam NUMBER_BLOCKS = (ADDER_WIDTH + BLOCK_SIZE)/BLOCK_SIZE;   // (N/M)
    // for each each block we will have two sets of sums and carries, one for 0 case and one for 1 case ->
    wire [BLOCK_SIZE-1:0] sum0[0:NUMBER_BLOCKS-1] , sum1 [0:NUMBER_BLOCKS-1]; // there are the outputs from the blocks
    
    wire [NUMBER_BLOCKS-1:0] carry0 , carry1;  // these are the carry out signals from each block

     //the correct carry signals between the blocjs 
     wire   [NUMBER_BLOCKS : 0] selectCarry;
     assign selectCarry[0] = iCarry;  // for the initial carry in signal of the CSA
         
    // Calculating the first block with actual carry-in
    carry_lookahead_adder #(.WIDTH(BLOCK_SIZE)) adderf (
        .iA(iA[BLOCK_SIZE-1:0]),
        .iB(iB[BLOCK_SIZE-1:0]),
        .iCarry(selectCarry[0]),
        .oSum(oSum[BLOCK_SIZE-1:0]),
        .oCarry(selectCarry[1])
    );
    
    // Preemptively calculating all subsequent blocks with both case carr in 0 and 1
    genvar i;
    generate
        for (i = 1; i < NUMBER_BLOCKS - 1; i = i + 1) begin
            carry_lookahead_adder #(.WIDTH(BLOCK_SIZE)) adder0 (
                .iA(iA[(i+1)*BLOCK_SIZE-1 : i*BLOCK_SIZE]),
                .iB(iB[(i+1)*BLOCK_SIZE-1 : i*BLOCK_SIZE]),
                .iCarry(1'b0),
                .oSum(sum0[i]),
                .oCarry(carry0[i])
            );

            carry_lookahead_adder #(.WIDTH(BLOCK_SIZE)) adder1 (
                .iA(iA[(i+1)*BLOCK_SIZE-1 : i*BLOCK_SIZE]),
                .iB(iB[(i+1)*BLOCK_SIZE-1 : i*BLOCK_SIZE]),
                .iCarry(1'b1),
                .oSum(sum1[i]),
                .oCarry(carry1[i])
            );
        end
    endgenerate
    
    // Select the correct block based on the carry out from the previous block
    for (i = 1; i < NUMBER_BLOCKS - 1; i = i + 1)
     begin
        assign oSum[(i+1)*BLOCK_SIZE-1 : i*BLOCK_SIZE] = selectCarry[i] ? sum1[i] : sum0[i]; // 
        assign selectCarry[i+1] = selectCarry[i] ? carry1[i] : carry0[i];  // determine the correct carry in for the net block
    end
    
    // Output carry
    assign oCarry = selectCarry[NUMBER_BLOCKS-1];

    
endmodule
