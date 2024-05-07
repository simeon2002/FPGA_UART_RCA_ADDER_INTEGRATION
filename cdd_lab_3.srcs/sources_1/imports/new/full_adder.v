`timescale 1ns / 1ps


module full_adder(
    input wire ia, ib, icarry,
    output wire osum, ocarry
    );

    assign osum = (ia ^ ib) ^ icarry;
    assign ocarry = ia & ib | (ia ^ ib) & icarry;

endmodule
