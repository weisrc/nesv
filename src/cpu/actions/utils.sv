`include "../common.sv"

`ifndef UTILS_H
`define UTILS_H

function void END(inout state_t state, input cycle_t duration);
  if (state.cycle == duration - 1) begin
    state.addr = state.pc;
    state.cycle = 0;
    state.rw = 0;
  end
endfunction

`endif
