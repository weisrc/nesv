`include "../common.sv"

`ifndef UTILS_H
`define UTILS_H

function void END(inout state_t state);
  state.addr = state.pc;
  state.cycle = 0;
  state.rw = 0;
endfunction

`endif
