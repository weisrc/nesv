`include "../common.sv"

`ifndef ARITHMETIC_H
`define ARITHMETIC_H

function void ADC(`action_args);
  if (`rel + 0) {state.carry, state.acc} += state.data + {7'b0, state.carry};
endfunction

function void DEC(`action_args);
  if (`rel + 0) begin
    state.data--;
    state.rw = 1;
  end
endfunction

function void DEC_ACC(`action_args);
  if (`rel + 0) state.acc--;
endfunction

function void DEX(`action_args);
  if (`rel + 0) state.x--;
endfunction

function void DEY(`action_args);
  if (`rel + 0) state.y--;
endfunction

function void INC(`action_args);
  if (`rel + 0) begin
    state.data++;
    state.rw = 1;
  end
endfunction

function void INC_ACC(`action_args);
  if (`rel + 0) state.acc++;
endfunction

function void INX(`action_args);
  if (`rel + 0) state.x++;
endfunction

function void INY(`action_args);
  if (`rel + 0) state.y++;
endfunction

function void SBC(`action_args);
  if (`rel + 0) {state.carry, state.acc} -= state.data + {7'b0, state.carry};
endfunction

`endif
