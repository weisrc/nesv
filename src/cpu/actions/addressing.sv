`ifndef ADDRESSING_H
`define ADDRESSING_H

`include "../common.sv"

`action(ABS)
    `rel(0) begin
        state.tmp = state.data;
        state.addr++;
    end
    `rel(1) state.addr = {state.data, state.tmp};
`endaction

`action(ABS_X_PTR)
    `rel(0) begin
        state.tmp = state.data;
        state.addr++;
    end
    `rel(1) state.addr = {state.data, state.tmp} + {8'b0, state.x};
    `rel(2) begin
        state.tmp = state.data;
        state.addr++;
    end
    `rel(3) state.pc = {state.tmp, state.data};
`endaction

`action(ABS_X)
    `rel(0) begin
        state.tmp = state.data;
        state.addr++;
    end
    `rel(1) state.addr = {state.data, state.tmp} + {8'b0, state.x};
`endaction

`action(ABS_Y)
    `rel(0) begin
        state.tmp = state.data;
        state.addr++;
    end
    `rel(1) state.addr = {state.data, state.tmp} + {8'b0, state.y};
`endaction

`action(ABS_PTR)
    `rel(0) begin
        state.tmp = state.data;
        state.addr++;
    end
    `rel(1) state.addr = {state.data, state.tmp};
    `rel(2) begin
        state.tmp = state.data;
        state.addr++;
    end
    `rel(3) state.pc = {state.tmp, state.data};
`endaction

`action(REL)
    `rel(0) state.addr = state.pc + {8'b0, state.data};
`endaction

`action(STACK)
    `rel(0) state.addr = {8'b1, state.sp};
`endaction

`action(X_PTR)
    `rel(0) state.addr = {8'b0, state.data + state.x};
    `rel(1) state.addr = {8'b0, state.data};
`endaction

`action(PTR)
    `rel(0) state.addr = {8'b0, state.data};
    `rel(1) state.addr = {8'b0, state.data};
`endaction

`action(PTR_Y)
    `rel(0) state.addr = {8'b0, state.data};
    `rel(1) state.addr = {8'b0, state.data + state.y};
`endaction

`action(ZP)
    `rel(0) state.addr = {8'b0, state.data};
`endaction

`action(ZP_X)
    `rel(0) state.addr = {8'b0, state.data + state.x};
`endaction

`action(ZP_Y)
    `rel(0) state.addr = {8'b0, state.data + state.y};
`endaction

`endif