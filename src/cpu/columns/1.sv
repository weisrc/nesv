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
  case (state.op[7:4])
    'h0: ORA(state, 4);
    'h1: ORA(state, 3);
    'h2: AND(state, 4);
    'h3: AND(state, 3);
    'h4: EOR(state, 4);
    'h5: EOR(state, 3);
    'h6: ADC(state, 4);
    'h7: ADC(state, 3);
    'h8: STA(state, 4);
    'h9: STA(state, 3);
    'hA: LDA(state, 4);
    'hB: LDA(state, 3);
    'hC: CMP(state, 4);
    'hD: CMP(state, 3);
    'hE: SBC(state, 4);
    'hF: SBC(state, 3);
  endcase
endfunction
