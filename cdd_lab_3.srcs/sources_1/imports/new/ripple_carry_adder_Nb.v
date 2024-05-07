module ripple_carry_adder_Nb #(
    parameter ADDER_WIDTH = 4
) (
    input [ADDER_WIDTH - 1: 0] iA, iB,
    input iCarry,
    output [ADDER_WIDTH - 1: 0] oSum,
    output oCarry
);
    wire [ADDER_WIDTH - 1: 0] w_ocarry;
    wire [ADDER_WIDTH - 1: 0] w_icarry;
    assign w_icarry[0] = iCarry;
    generate
        genvar i;
        for (i = 0; i < ADDER_WIDTH; i = i + 1) begin
            if (i != 0) begin
                assign w_icarry[i] = w_ocarry[i - 1];
            end
            full_adder inst (iA[i], iB[i], w_icarry[i], oSum[i], w_ocarry[i]);
        end

        assign oCarry = w_ocarry[ADDER_WIDTH - 1];
    endgenerate
endmodule


// WORKING CODE:
/*
module ripple_carry_adder_Nb #(
    parameter ADDER_WIDTH = 4
) (
    input [ADDER_WIDTH - 1: 0] ia, ib,
    input icarry,
    output [ADDER_WIDTH - 1: 0] oq,
    output ocarry
);
    wire [ADDER_WIDTH - 1: 0] w_ocarry;
    generate
        genvar i;

        for (i = 0; i < ADDER_WIDTH; i = i + 1) begin
            if (i == 0) begin
                full_adder inst (ia[i], ib[i], icarry, oq[i], w_ocarry[i]);
            end
            else begin
                full_adder inst (ia[i], ib[i], w_ocarry[i - 1], oq[i], w_ocarry[i]);
            end
        end

        assign ocarry = w_ocarry[ADDER_WIDTH - 1];
    endgenerate




endmodule
*/