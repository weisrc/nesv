`include "../common.sv"
`include "utils.sv"

`ifndef MISC_H
`define MISC_H

function void NOP(`action_args);
  state.pc++;
  done(state);
endfunction

function void ERR(input byte code, `action_args);
  state.err = code;
endfunction

`endif
