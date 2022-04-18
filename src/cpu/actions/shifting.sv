`include "../common.sv"

`ifndef SHIFTING_H
`define SHIFTING_H

function void ASL_ACC(`action_args);
  if (`rel + 0) {state.carry, state.acc} = {state.acc, 1'b0};
endfunction

function void ASL(`action_args);
  if (`rel + 0) begin
    {state.carry, state.data} = {state.data, 1'b0};
    state.rw = 1;
  end
endfunction

function void LSR_ACC(`action_args);
  if (`rel + 0) {state.acc, state.carry} = {1'b0, state.acc};
endfunction

function void LSR(`action_args);
  if (`rel + 0) begin
    {state.data, state.carry} = {1'b0, state.data};
    state.rw = 1;
  end
endfunction

function void ROL_ACC(`action_args);
  if (`rel + 0) state.acc = {state.acc[6:0], state.acc[7]};
endfunction

function void ROL(`action_args);
  if (`rel + 0) begin
    state.data = {state.data[6:0], state.data[7]};
    state.rw = 1;
  end
endfunction

function void ROR_ACC(`action_args);
  if (`rel + 0) state.acc = {state.acc[0], state.acc[7:1]};
endfunction

function void ROR(`action_args);
  if (`rel + 0) begin
    state.data = {state.data[0], state.data[7:1]};
    state.rw = 1;
  end
endfunction

`endif
