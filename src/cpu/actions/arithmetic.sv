`include "../common.sv"
`include "utils.sv"

`ifndef ARITHMETIC_H
`define ARITHMETIC_H

function void ADC(`action_args);
  if (`rel + 0) {state.carry, state.acc} += state.data + {7'b0, state.carry};
  END(state, at + 1);
endfunction

function void DEC(`action_args);
  if (`rel + 0) begin
    state.data--;
    state.rw = 1;
  end
  END(state, at + 1);
endfunction

function void DEA(`action_args);
  if (`rel + 0) state.acc--;
  END(state, at + 1);
endfunction

function void DEX(`action_args);
  if (`rel + 0) state.x--;
  END(state, at + 1);
endfunction

function void DEY(`action_args);
  if (`rel + 0) state.y--;
  END(state, at + 1);
endfunction

function void INC(`action_args);
  if (`rel + 0) begin
    state.data++;
    state.rw = 1;
  end
  END(state, at + 1);
endfunction

function void INA(`action_args);
  if (`rel + 0) state.acc++;
  END(state, at + 1);
endfunction

function void INX(`action_args);
  if (`rel + 0) state.x++;
  END(state, at + 1);
endfunction

function void INY(`action_args);
  if (`rel + 0) state.y++;
  END(state, at + 1);
endfunction

function void SBC(`action_args);
  if (`rel + 0) {state.carry, state.acc} -= state.data + {7'b0, state.carry};
  END(state, at + 1);
endfunction

`endif
