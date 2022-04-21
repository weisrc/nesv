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
  END(state, at + 1);
endfunction

function void REL(`action_args);
  if (`rel + 0) begin
    state.pc += 2;
    state.addr = state.pc + {8'b0, state.data};
  end
  END(state, at + 1);
endfunction

function void B(logic value, `action_args);
  if (`rel + 0) begin

  end
endfunction

`endif
