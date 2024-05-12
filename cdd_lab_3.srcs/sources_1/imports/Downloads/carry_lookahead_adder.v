`timescale 1ns / 1ps

module carry_lookahead_adder#(
    parameter WIDTH = 4)
(
    input [3:0] iA, iB,
    input iCarry,
    output [3:0] oSum,
    output oCarry
    );
    
    wire [3:0] G, P;
    wire [4:0] C;  // C[0] to C[4] where C[4] is Cout
    
    //the first carry in
    assign C[0] = iCarry;

    //use the partial adders
    // Instantiate PFAs
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : PFAs
            partial_full_adder pfa(
                .ia(iA[i]),
                .ib(iB[i]),
                .icarry(C[i]),
                .osum(oSum[i]),
                .g(G[i]),
                .p(P[i])
            );
        end
    endgenerate

// Calculate carries using look-ahead logic
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]);
    assign C[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & C[0]);

    // Carry out is the last carry generated
    assign oCarry = C[4];

endmodule