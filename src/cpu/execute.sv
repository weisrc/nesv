`ifndef EXECUTE_H
`define EXECUTE_H

`include "common.sv"
`include "matrix.sv"

function void execute(inout state_t state);
  if (state.sync) begin
    state.op = state.data;
    state.addr++;
    state.rw = 0;
    state.sync = 0;
  end
  case (state.op[3:0])
    'h0: column_0(state);
    'h4: column_4(state);
    'h8: column_8(state);
    'hA: column_A(state);
    'hC: column_C(state);
    'h6, 'hE: column_6E(state);
    'h1, 'h2, 'h5, 'h9, 'hD: column_1259D(state);
    default: ERR(1, state);
  endcase
  if (~state.sync) state.cycle++;
endfunction

`endif
