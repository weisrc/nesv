`include "../common.sv"
`include "utils.sv"

`ifndef BRANCHING_H
`define BRANCHING_H

function void JMP(`action_args);
  if (`rel + 0) begin
    state.pc = {state.tmp, state.data};
    state.addr = state.pc;
    state.cycle = 0;
    state.rw = 0;
  end
  if (`rel + 1) END(state);
endfunction

function void B(logic value, `action_args);
  if (value) begin
    if (`rel + 0) state.pc += {8'b0, state.data};
    if (`rel + 1) END(state);
  end else begin
    if (`rel + 0) END(state);
  end
endfunction

`endif
