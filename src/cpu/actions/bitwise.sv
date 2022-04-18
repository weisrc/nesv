`include "../common.sv"

`ifndef BITWISE_H
`define BITWISE_H

function void AND(`action_args);
  if (`rel + 0) state.acc &= state.data;
endfunction

function void ASL_ACC(`action_args);
  if (`rel + 0) {state.carry, state.acc} = {state.acc, 1'b0};
endfunction

function void ASL(`action_args);
  if (`rel + 0) begin
    {state.carry, state.data} = {state.data, 1'b0};
    state.rw = 1;
  end
endfunction

function void ORA(`action_args);
  if (`rel + 0) state.acc = state.acc | state.data;
endfunction

function void EOR(`action_args);
  if (`rel + 0) state.acc = state.acc ^ state.data;
endfunction

`endif
