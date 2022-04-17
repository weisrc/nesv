`include "../common.sv"

`ifndef STATUS_H
`define STATUS_H

`action(CMP)
    `rel(0) {state.negative, state.zero, state.carry} = {state.acc[7], state.acc == state.data, state.acc > state.data};
`endaction

`action(CPX)
    `rel(0) {state.negative, state.zero, state.carry} = {state.x[7], state.x == state.data, state.x > state.data};
`endaction

`action(CPY)
    `rel(0) {state.negative, state.zero, state.carry} = {state.y[7], state.y == state.data, state.y > state.data};
`endaction

`action(CLC)
    `rel(0) state.carry = 0;
`endaction

`action(CLD)
    `rel(0) state.decimal = 0;
`endaction

`action(CLI)
    `rel(0) state.irqb = 0;
`endaction

`action(CLV)
    `rel(0) state.overflow = 0;
`endaction

`endif