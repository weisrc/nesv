`ifndef MODES_H
`define MODES_H

`include "../common.sv"

`action(absolute)
    `rel(0) begin
        state.tmp = state.data;
        state.addr++;
    end
    `rel(1) state.addr = {state.data, state.tmp};
`endaction

`action(absolute_indexed_indirect_x)
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

`action(absolute_indexed_x)
    `rel(0) begin
        state.tmp = state.data;
        state.addr++;
    end
    `rel(1) state.addr = {state.data, state.tmp} + {8'b0, state.x};
`endaction

`action(absolute_indexed_y)
    `rel(0) begin
        state.tmp = state.data;
        state.addr++;
    end
    `rel(1) state.addr = {state.data, state.tmp} + {8'b0, state.y};
`endaction

`action(absolute_indirect)
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

`action(relative)
    `rel(0) state.addr = state.pc + {8'b0, state.data};
`endaction

`action(stack)
    `rel(0) state.addr = {8'b1, state.sp};
`endaction

`action(zero_page)
    `rel(0) state.addr = {8'b0, state.data};
`endaction

`action(zero_page_indexed_indirect_x)
    `rel(0) state.addr = {8'b0, state.data + state.x};
    `rel(1) state.addr = {8'b0, state.data};
`endaction

`action(zero_page_indexed_x)
    `rel(0) state.addr = {8'b0, state.data + state.x};
`endaction

`action(zero_page_indexed_y)
    `rel(0) state.addr = {8'b0, state.data + state.y};
`endaction

`action(zero_page_indirect)
    `rel(0) state.addr = {8'b0, state.data};
    `rel(1) state.addr = {8'b0, state.data};
`endaction

`action(zero_page_indirect_indexed_y)
    `rel(0) state.addr = {8'b0, state.data};
    `rel(1) state.addr = {8'b0, state.data + state.y};
`endaction

`endif