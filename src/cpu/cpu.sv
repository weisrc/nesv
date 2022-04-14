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
    assign state.data = data;
    assign state.addr = addr;

    always @(negedge clk) begin 
        $display("cycle:%d, data:%h, op:%h", state.cycle, state.data, state.op);
        execute(state);
        state.cycle += 1;
    end
endmodule