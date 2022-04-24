`include "../common.sv"
`include "utils"

`ifndef COMPARE_H
`define COMPARE_H

function void CMP(`action_args);
  if (`rel + 0)
    {state.negative, state.zero, state.carry} = {
      state.acc[7], state.acc == state.data, state.acc > state.data
    };
  if (`rel + 1) done(state);
endfunction

function void CPX(`action_args);
  if (`rel + 0)
    {state.negative, state.zero, state.carry} = {
      state.x[7], state.x == state.data, state.x > state.data
    };
  if (`rel + 1) done(state);
endfunction

function void CPY(`action_args);
  if (`rel + 0)
    {state.negative, state.zero, state.carry} = {
      state.y[7], state.y == state.data, state.y > state.data
    };
  if (`rel + 1) done(state);
endfunction

`endif
