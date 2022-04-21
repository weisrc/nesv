`include "../common.sv"
`include "utils.sv"

`ifndef TRANSFER_H
`define TRANSFER_H

function void TAX(`action_args);
  if (`rel + 0) state.x = state.acc;
  END(state, at + 1);
endfunction

function void TAY(`action_args);
  if (`rel + 0) state.y = state.acc;
  END(state, at + 1);
endfunction

function void TSX(`action_args);
  if (`rel + 0) state.x = state.sp;
  END(state, at + 1);
endfunction

function void TXA(`action_args);
  if (`rel + 0) state.acc = state.x;
  END(state, at + 1);
endfunction

function void TXS(`action_args);
  if (`rel + 0) state.sp = state.x;
  END(state, at + 1);
endfunction

function void TYA(`action_args);
  if (`rel + 0) state.acc = state.y;
  END(state, at + 1);
endfunction

`endif
