`include "../common.sv"
`include "utils.sv"

`ifndef STATUS_H
`define STATUS_H

function void CLC(`action_args);
  if (`rel + 0) state.carry = 0;
  END(state, at + 1);
endfunction

function void CLD(`action_args);
  if (`rel + 0) state.decimal = 0;
  END(state, at + 1);
endfunction

function void CLI(`action_args);
  if (`rel + 0) state.irqb = 0;
  END(state, at + 1);
endfunction

function void CLV(`action_args);
  if (`rel + 0) state.overflow = 0;
  END(state, at + 1);
endfunction

function void SEC(`action_args);
  if (`rel + 0) state.carry = 1;
  END(state, at + 1);
endfunction

function void SED(`action_args);
  if (`rel + 0) state.decimal = 1;
  END(state, at + 1);
endfunction

function void SEI(`action_args);
  if (`rel + 0) state.irqb = 1;
  END(state, at + 1);
endfunction

function void SEV(`action_args);
  if (`rel + 0) state.overflow = 1;
  END(state, at + 1);
endfunction

`endif
