`include "../common.sv"

`ifndef TRANSFER_H
`define TRANSFER_H

function void TAX(`action_args);
  if (`rel + 0) state.x = state.acc;
endfunction

function void TAY(`action_args);
  if (`rel + 0) state.y = state.acc;
endfunction

function void TSX(`action_args);
  if (`rel + 0) state.x = state.sp;
endfunction

function void TXA(`action_args);
  if (`rel + 0) state.acc = state.x;
endfunction

function void TXS(`action_args);
  if (`rel + 0) state.sp = state.x;
endfunction

function void TYA(`action_args);
  if (`rel + 0) state.acc = state.y;
endfunction

`endif
