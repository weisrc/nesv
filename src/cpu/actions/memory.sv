`include "../common.sv"
`include "utils.sv"

`ifndef MEMORY_H
`define MEMORY_H

function void LDA(`action_args);
  if (`rel + 0) state.acc = state.data;
  END(state, at + 1);
endfunction

function void LDX(`action_args);
  if (`rel + 0) state.x = state.data;
  END(state, at + 1);
endfunction

function void LDY(`action_args);
  if (`rel + 0) state.y = state.data;
  END(state, at + 1);
endfunction

function void STA(`action_args);
  if (`rel + 0) begin
    state.data = state.acc;
    state.rw = 1;
  end
  END(state, at + 1);
endfunction

function void STX(`action_args);
  if (`rel + 0) begin
    state.data = state.x;
    state.rw = 1;
  end
  END(state, at + 1);
endfunction

function void STY(`action_args);
  if (`rel + 0) begin
    state.data = state.y;
    state.rw = 1;
  end
  END(state, at + 1);
endfunction

function void STZ(`action_args);
  if (`rel + 0) begin
    state.data = 0;
    state.rw = 1;
  end
  END(state, at + 1);
endfunction

`endif
