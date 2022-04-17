`ifndef COMMON_H
`define COMMON_H

typedef struct packed {
    logic rw, negative, overflow, brk, decimal, irqb, zero, carry;
    logic [3:0] cycle;
    logic [7:0] data, acc, x, y, sp, op, tmp;
    logic [15:0] addr, pc;
} state_t;

`define at(n) if (state.cycle == n)
`define only(n) if (state.cycle != n) return;
`define rel(n) `at(cycle + n)

`define action(NAME) function void ``NAME``(inout state_t state, input logic [3:0] cycle);
`define endaction endfunction

function void done(inout state_t state, input logic [3:0] cycles, input logic [15:0] size);
    `at(cycles - 1) begin 
        state.pc += size;
        state.addr = state.pc;
        state.cycle = 0;
        state.rw = 0;
    end
endfunction

`endif