`include "../common.sv"

`ifndef BITWISE_H
`define BITWISE_H

`action(ADC)
    `rel(0) {state.carry, state.acc} += state.data + {7'b0, state.carry};
`endaction

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

`action(CPA)
    `rel(0) {state.negative, state.zero, state.carry} = {state.acc[7], state.acc == state.data, state.acc > state.data};
`endaction

`action(CPX)
    `rel(0) {state.negative, state.zero, state.carry} = {state.x[7], state.x == state.data, state.x > state.data};
`endaction

`action(CPY)
    `rel(0) {state.negative, state.zero, state.carry} = {state.y[7], state.y == state.data, state.y > state.data};
`endaction

`endif