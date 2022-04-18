`ifndef COMMON_H
`define COMMON_H

typedef struct packed {
  logic rw, negative, overflow, brk, decimal, irqb, zero, carry;
  logic [3:0] cycle;
  logic [7:0] data, acc, x, y, sp, op, tmp;
  logic [15:0] addr, pc;
} state_t;

`define rel state.cycle == at
`define action_args inout state_t state, input logic [3:0] at
`define action(NAME) function void ``NAME``();
`define endaction endfunction

function void END(inout state_t state, input logic [3:0] duration, input logic [15:0] size);
  if (state.cycle == duration - 1) begin
    state.pc += size;
    state.addr = state.pc;
    state.cycle = 0;
    state.rw = 0;
  end
endfunction

`endif
