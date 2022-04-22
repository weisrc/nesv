`ifndef COMMON_H
`define COMMON_H

typedef logic [3:0] cycle_t;
typedef logic [3*8:1] mnemonic_t;

typedef struct packed {
  logic rw, sync, negative, overflow, brk, unused, decimal, irqb, zero, carry;
  cycle_t cycle;
  logic [7:0] data, acc, x, y, sp, op, tmp;
  logic [15:0] addr, pc;
  mnemonic_t mnemonic;
} state_t;

`define rel state.cycle == at
`define action_args inout state_t state, input cycle_t at = 1
`define action(NAME) function void ``NAME``();
`define endaction endfunction

`endif
