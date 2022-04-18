`include "../common.sv"

`ifndef STATUS_H
`define STATUS_H

function void CMP(`action_args);
  if (`rel + 0)
    {state.negative, state.zero, state.carry} = {
      state.acc[7], state.acc == state.data, state.acc > state.data
    };
endfunction

function void CPX(`action_args);
  if (`rel + 0)
    {state.negative, state.zero, state.carry} = {
      state.x[7], state.x == state.data, state.x > state.data
    };
endfunction

function void CPY(`action_args);
  if (`rel + 0)
    {state.negative, state.zero, state.carry} = {
      state.y[7], state.y == state.data, state.y > state.data
    };
endfunction

function void CLC(`action_args);
  if (`rel + 0) state.carry = 0;
endfunction

function void CLD(`action_args);
  if (`rel + 0) state.decimal = 0;
endfunction

function void CLI(`action_args);
  if (`rel + 0) state.irqb = 0;
endfunction

function void CLV(`action_args);
  if (`rel + 0) state.overflow = 0;
endfunction

`endif
