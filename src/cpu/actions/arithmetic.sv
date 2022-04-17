`include "../common.sv"

`ifndef ARITHMETIC_H
`define ARITHMETIC_H

`action(ADC)
    `rel(0) {state.carry, state.acc} += state.data + {7'b0, state.carry};
`endaction

`action(DEC)
    `rel(0) begin
        state.data--;
        state.rw = 1;
    end
`endaction

`action(DEC_ACC)
    `rel(0) state.acc--;
`endaction

`action(DEX)
    `rel(0) state.x--;
`endaction

`action(DEY)
    `rel(0) state.y--;
`endaction

`action(INC)
    `rel(0) begin
        state.data++;
        state.rw = 1;
    end
`endaction

`action(INC_ACC)
    `rel(0) state.acc++;
`endaction

`action(INX)
    `rel(0) state.x++;
`endaction

`action(INY)
    `rel(0) state.y++;
`endaction

`action(SBC)
    `rel(0) {state.carry, state.acc} -= state.data + {7'b0, state.carry};
`endaction

`endif