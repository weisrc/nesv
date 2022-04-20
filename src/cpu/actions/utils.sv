`include "../common.sv"

`ifndef UTILS_H
`define UTILS_H

function void END(inout state_t state, input logic [3:0] duration, input logic [15:0] size);
  if (state.cycle == duration - 1) begin
    state.pc += size;
    state.addr = state.pc;
    state.cycle = 0;
    state.rw = 0;
  end
endfunction

`endif
