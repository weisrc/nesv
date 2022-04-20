`include "../common.sv"

`ifndef BITWISE_H
`define BITWISE_H

function void AND(`action_args);
  if (`rel + 0) state.acc &= state.data;
endfunction

function void ORA(`action_args);
  if (`rel + 0) state.acc = state.acc | state.data;
endfunction

function void EOR(`action_args);
  if (`rel + 0) state.acc = state.acc ^ state.data;
endfunction

function void TSB(`action_args);
  if (`rel + 0) begin
    state.data = state.data | state.acc;
    state.rw   = 1;
  end
endfunction

function void TRB(`action_args);
  if (`rel + 0) begin
    state.data = state.data & ~state.acc;
    state.rw   = 1;
  end
endfunction

function void BIT(`action_args);
  if (`rel + 0) begin
    state.zero = (state.data & state.acc) == 0;
    state.negative = state.data[7];
    state.overflow = state.data[6];
  end
endfunction

`endif
