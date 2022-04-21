`ifndef EXECUTE_H
`define EXECUTE_H

`include "common.sv"
`include "matrix.sv"

function void execute(inout state_t state);
  if (state.cycle == 0) begin
    state.op = state.data;
    state.addr++;
    state.cycle++;
    state.rw = 0;
  end
  case (state.op[3:0])
    'h0: column_0(state);
    'h1: column_1(state);
    'h2: column_2(state);
    'h3: column_3(state);
    'h4: column_4(state);
    'h5: column_5(state);
    'h6: column_6(state);
    'h7: column_7(state);
    'h8: column_8(state);
    'h9: column_9(state);
    'hA: column_A(state);
    'hB: column_B(state);
    'hC: column_C(state);
    'hD: column_D(state);
    'hE: column_E(state);
    'hF: column_F(state);
  endcase
  if (state.cycle != 0) state.cycle++;
endfunction

`endif
