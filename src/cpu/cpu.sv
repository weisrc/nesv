`include "common.svh"
`include "execute.svh"

module cpu(
    input wire clk,
    output wire rw,
    output wire[3:0] cycle,
    inout wire[7:0] data,
    output wire[7:0] sdata, acc, x, y, sp, op, tmp,
    output wire[15:0] addr, pc
);
    state_t state;
    assign {
        rw,
        cycle,
        sdata, acc, x, y, sp, op, tmp,
        addr, pc
    } = state;

    assign data = rw ? 8'bz : state.data;

    always @(negedge clk) begin
        if (~rw) state.data = data;
        execute(state);
    end
endmodule