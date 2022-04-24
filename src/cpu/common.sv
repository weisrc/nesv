`ifndef COMMON_H
`define COMMON_H

typedef logic [2:0] cycle_t;
typedef logic [3*8:1] mnemonic_t;

typedef struct packed {
  logic rw, sync, negative, overflow, brk, unused, decimal, irqb, zero, carry;
  cycle_t cycle;
  byte data, acc, x, y, sp, op, tmp, err;
  shortint addr, pc;
  mnemonic_t mnemonic;
} state_t;

`define rel state.cycle == at
`define action_args inout state_t state, input cycle_t at = 1
`define action(NAME) function void ``NAME``();
`define endaction endfunction

`endif
