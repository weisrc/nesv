`include "../common.sv"

`ifndef BRANCHING_H
`define BRANCHING_H

function void JMP(`action_args);
  if (`rel + 0) begin
    state.pc = {state.tmp, state.data};
    state.addr = state.pc;
    state.cycle = 0;
    state.rw = 0;
  end
endfunction

`endif
