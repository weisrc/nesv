`include "../common.sv"

`ifndef BITWISE_H
`define BITWISE_H

`action(AND)
    `rel(0) state.acc &= state.data;
`endaction

`action(ASL_ACC)
    `rel(0) {state.carry, state.acc} = {state.acc, 1'b0};
`endaction

`action(ASL)
    `rel(0) begin
        {state.carry, state.data} = {state.data, 1'b0};
        state.rw = 1;
    end
`endaction

`action(ORA)
    `rel(0) state.acc = state.acc | state.data;
`endaction

`action(EOR)
    `rel(0) state.acc = state.acc ^ state.data;
`endaction

`endif