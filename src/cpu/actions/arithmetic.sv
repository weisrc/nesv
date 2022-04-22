`include "../common.sv"
`include "utils.sv"

`ifndef ARITHMETIC_H
`define ARITHMETIC_H

function void ADC(`action_args);
  if (`rel + 0) {state.carry, state.acc} += state.data + {7'b0, state.carry};
  if (`rel + 1) END(state);
endfunction

function void DEC(`action_args);
  if (`rel + 0) begin
    state.data--;
    state.rw = 1;
  end
  if (`rel + 1) END(state);
endfunction

function void DEA(`action_args);
  if (`rel + 0) state.acc--;
  if (`rel + 1) END(state);
endfunction

function void DEX(`action_args);
  if (`rel + 0) state.x--;
  if (`rel + 1) END(state);
endfunction

function void DEY(`action_args);
  if (`rel + 0) state.y--;
  if (`rel + 1) END(state);
endfunction

function void INC(`action_args);
  if (`rel + 0) begin
    state.data++;
    state.rw = 1;
  end
  if (`rel + 1) END(state);
endfunction

function void INA(`action_args);
  if (`rel + 0) state.acc++;
  if (`rel + 1) END(state);
endfunction

function void INX(`action_args);
  if (`rel + 0) state.x++;
  if (`rel + 1) END(state);
endfunction

function void INY(`action_args);
  if (`rel + 0) state.y++;
  if (`rel + 1) END(state);
endfunction

function void SBC(`action_args);
  if (`rel + 0) {state.carry, state.acc} -= state.data + {7'b0, state.carry};
  if (`rel + 1) END(state);
endfunction

`endif
