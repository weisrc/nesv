`include "../common.sv"
`include "utils.sv"

`ifndef MISC_H
`define MISC_H

function void NOP(`action_args);
  state.pc++;
  END(state);
endfunction

`endif
