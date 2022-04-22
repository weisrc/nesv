`include "../common.sv"
`include "utils.sv"

`ifndef STACK_H
`define STACK_H

`define status {state.negative, state.overflow, state.unused, state.brk, state.decimal, state.irqb, state.zero, state.carry}

function void push(state_t state, logic [7:0] data);
  state.addr = {8'b1, state.sp};
  state.rw = 1;
  state.sp--;
  state.data = data;
endfunction

function void pull(state_t state);
  state.sp++;
  state.addr = {8'b1, state.sp};
endfunction

function void PHP(`action_args);
  if (`rel + 0) push(state, `status);
  if (`rel + 1) END(state);
endfunction

function void PLP(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) `status = state.data;
  if (`rel + 2) END(state);
endfunction

function void PHA(`action_args);
  if (`rel + 0) push(state, state.acc);
  if (`rel + 1) END(state);
endfunction

function void PLA(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) state.acc = state.data;
  if (`rel + 2) END(state);
endfunction

function void PHX(`action_args);
  if (`rel + 0) push(state, state.x);
  if (`rel + 1) END(state);
endfunction

function void PLX(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) state.x = state.data;
  if (`rel + 2) END(state);
endfunction

function void PHY(`action_args);
  if (`rel + 0) push(state, state.y);
  if (`rel + 1) END(state);
endfunction

function void PLY(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) state.y = state.data;
  if (`rel + 2) END(state);
endfunction

`endif
