`include "../common.sv"
`include "../actions.sv"

function void column_D(inout state_t state);

  if (state.op[4]) begin
    PTR_Y(state, 1);
    END(state, 3, 4);
  end else begin
    X_PTR(state, 1);
    END(state, 3, 4);
  end


  case (state.op[7:5])
    0: ORA(state, 3);
    1: AND(state, 3);
    2: EOR(state, 3);
    3: ADC(state, 3);
    4: STA(state, 3);
    5: LDA(state, 3);
    6: CMP(state, 3);
    7: SBC(state, 3);
  endcase

endfunction
