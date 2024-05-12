`timescale 1ns / 1ps

module partial_full_adder(
    input wire ia, ib, icarry,
    output wire osum, p, g
    );

    //based on the slides
    assign osum = ia^ib^icarry;
    assign g = ia&ib;
    assign p = ia^ib;


endmodule