`include "../common.sv"
`include "utils.sv"

`ifndef TRANSFER_H
`define TRANSFER_H

function void TAX(`action_args);
  if (`rel + 0) state.x = state.acc;
  if (`rel + 1) END(state);
endfunction

function void TAY(`action_args);
  if (`rel + 0) state.y = state.acc;
  if (`rel + 1) END(state);
endfunction

function void TSX(`action_args);
  if (`rel + 0) state.x = state.sp;
  if (`rel + 1) END(state);
endfunction

function void TXA(`action_args);
  if (`rel + 0) state.acc = state.x;
  if (`rel + 1) END(state);
endfunction

function void TXS(`action_args);
  if (`rel + 0) state.sp = state.x;
  if (`rel + 1) END(state);
endfunction

function void TYA(`action_args);
  if (`rel + 0) state.acc = state.y;
  if (`rel + 1) END(state);
endfunction

`endif
