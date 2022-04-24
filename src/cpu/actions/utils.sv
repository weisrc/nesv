`include "../common.sv"

`ifndef UTILS_H
`define UTILS_H

`define status {state.negative, state.overflow, state.unused, state.brk, state.decimal, state.irqb, state.zero, state.carry}

function void push(inout state_t state, input logic [7:0] data);
  state.addr = {8'b1, state.sp};
  state.rw = 1;
  state.sp--;
  state.data = data;
endfunction

function void pull(inout state_t state);
  state.sp++;
  state.addr = {8'b1, state.sp};
endfunction

function void read(inout state_t state, input shortint addr);
  state.rw = 0;
  state.addr = addr;
endfunction

function void write(inout state_t state, input shortint addr, input byte data);
  state.rw = 1;
  state.addr = addr;
  state.data = data;
endfunction

function void done(inout state_t state);
  state.addr = state.pc;
  state.cycle = 0;
  state.sync = 1;
  state.rw = 0;
endfunction

`endif
