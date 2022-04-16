`include "../common.sv"

`ifndef MEMORY_H
`define MEMORY_H

`action(STA)
    `rel(0) state.acc = state.data;
`endaction

`action(STX)
    `rel(0) state.x = state.data;
`endaction

`action(STY)
    `rel(0) state.y = state.data;
`endaction

`action(LDA)
    `rel(0) begin 
        state.data = state.acc;
        state.rw = 1;
    end
`endaction

`action(LDX)
    `rel(0) begin 
        state.data = state.x;
        state.rw = 1;
    end
`endaction

`action(LDY)
    `rel(0) begin 
        state.data = state.y;
        state.rw = 1;
    end
`endaction

`endif