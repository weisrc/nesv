`include "../common.sv"
`include "../actions.sv"
function void column_1(inout state_t state);
  if (state.op[4]) begin
    X_PTR(state, 1);
    END(state, 6, 2);
  end else begin
    PTR_Y(state, 1);
    END(state, 6, 2);
  end
  case (state.op[7:5])
    0: ORA(state, 4);
    1: AND(state, 4);
    2: EOR(state, 4);
    3: ADC(state, 4);
    4: STA(state, 4);
    5: LDA(state, 4);
    6: CMP(state, 4);
    7: SBC(state, 4);
  endcase
endfunction
