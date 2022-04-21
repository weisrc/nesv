`include "../common.sv"
`include "utils.sv"

`ifndef SHIFTING_H
`define SHIFTING_H

function void ASA(`action_args);
  if (`rel + 0) {state.carry, state.acc} = {state.acc, 1'b0};
  END(state, at + 1);
endfunction

function void ASL(`action_args);
  if (`rel + 0) begin
    {state.carry, state.data} = {state.data, 1'b0};
    state.rw = 1;
  end
  END(state, at + 1);
endfunction

function void LSA(`action_args);
  if (`rel + 0) {state.acc, state.carry} = {1'b0, state.acc};
  END(state, at + 1);
endfunction

function void LSR(`action_args);
  if (`rel + 0) begin
    {state.data, state.carry} = {1'b0, state.data};
    state.rw = 1;
  end
  END(state, at + 1);
endfunction

function void RLA(`action_args);
  if (`rel + 0) state.acc = {state.acc[6:0], state.acc[7]};
  END(state, at + 1);
endfunction

function void ROL(`action_args);
  if (`rel + 0) begin
    state.data = {state.data[6:0], state.data[7]};
    state.rw = 1;
  end
  END(state, at + 1);
endfunction

function void RRA(`action_args);
  if (`rel + 0) state.acc = {state.acc[0], state.acc[7:1]};
  END(state, at + 1);
endfunction

function void ROR(`action_args);
  if (`rel + 0) begin
    state.data = {state.data[0], state.data[7:1]};
    state.rw = 1;
  end
  END(state, at + 1);
endfunction

`endif
