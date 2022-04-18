`ifndef COMMON_H
`define COMMON_H

typedef struct packed {
  logic rw, negative, overflow, brk, unused, decimal, irqb, zero, carry;
  logic [3:0] cycle;
  logic [7:0] data, acc, x, y, sp, op, tmp;
  logic [15:0] addr, pc;
} state_t;

`define rel state.cycle == at
`define action_args inout state_t state, input logic [3:0] at
`define action(NAME) function void ``NAME``();
`define endaction endfunction

`endif
