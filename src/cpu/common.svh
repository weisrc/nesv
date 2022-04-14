`ifndef COMMON_H
`define COMMON_H

typedef logic [3:0] cycle_t;
typedef logic [7:0] byte_t;
typedef logic [15:0] addr_t;

typedef struct packed {
    // bus
    logic rw;
    byte_t data;
    addr_t addr;
    // internal
    byte_t acc;
    byte_t x;
    byte_t y;
    byte_t s;
    byte_t op;
    byte_t tmp;
    addr_t pc;
    cycle_t cycle;
} state_t;

`define save state.tmp = state.data;
`define read state.rw = 0;
`define write state.rw = 1;
`define next state.pc = state.pc + 1;
`define done(n) `at(n) begin state.addr = state.pc; state.cycle = 0; `read end

`define at(n) if (state.cycle == n)
`define only(n) if (state.cycle != n) return;
`define rel(n) `at(cycle + n)

`define action(NAME) function void ``NAME``(state_t state, cycle_t cycle);
`define endaction endfunction

`define column(CID) function void column_``CID``(state_t state); case (state.op[7:4])
`define endcolumn endcase endfunction

`endif