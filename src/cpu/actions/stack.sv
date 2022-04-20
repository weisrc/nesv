`include "../common.sv"

`ifndef STACK_H
`define STACK_H

`define status {state.negative, state.overflow, state.unused, state.brk, state.decimal, state.irqb, state.zero, state.carry}

function void push(state_t state, logic [7:0] data);
  state.addr = {8'b1, state.sp};
  state.rw   = 1;
  state.sp--;
  state.data = data;
endfunction

function void pull(state_t state);
  state.sp++;
  state.addr = {8'b1, state.sp};
endfunction

function void PHP(`action_args);
  if (`rel + 0) push(state, `status);
endfunction

function void PLP(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) `status = state.data;
endfunction

function void PHA(`action_args);
  if (`rel + 0) push(state, state.acc);
endfunction

function void PLA(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) state.acc = state.data;
endfunction

function void PHX(`action_args);
  if (`rel + 0) push(state, state.x);
endfunction

function void PLX(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) state.x = state.data;
endfunction

function void PHY(`action_args);
  if (`rel + 0) push(state, state.y);
endfunction

function void PLY(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) state.y = state.data;
endfunction

`endif
