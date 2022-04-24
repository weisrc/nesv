`include "../common.sv"
`include "utils.sv"

`ifndef STACK_H
`define STACK_H

function void PHP(`action_args);
  if (`rel + 0) push(state, `status);
  if (`rel + 1) done(state);
endfunction

function void PLP(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) `status = state.data;
  if (`rel + 2) done(state);
endfunction

function void PHA(`action_args);
  if (`rel + 0) push(state, state.acc);
  if (`rel + 1) done(state);
endfunction

function void PLA(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) state.acc = state.data;
  if (`rel + 2) done(state);
endfunction

function void PHX(`action_args);
  if (`rel + 0) push(state, state.x);
  if (`rel + 1) done(state);
endfunction

function void PLX(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) state.x = state.data;
  if (`rel + 2) done(state);
endfunction

function void PHY(`action_args);
  if (`rel + 0) push(state, state.y);
  if (`rel + 1) done(state);
endfunction

function void PLY(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) state.y = state.data;
  if (`rel + 2) done(state);
endfunction

`endif
