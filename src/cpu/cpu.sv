`include "common.svh"
`include "execute.svh"

module cpu(
    input logic clk,
    // bus
    output logic rw,
    inout byte data,
    inout shortint addr
);
    state_t state = {rw, data, addr, 68'b0};

    always @(negedge clk) execute(state);
endmodule