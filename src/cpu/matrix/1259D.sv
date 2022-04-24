`include "../common.sv"
`include "../actions.sv"

function void column_1259D(inout state_t state);

  cycle_t at;

  case (state.op[4:0])
    'h01: at = X_PTR(state);
    'h11: at = PTR_Y(state);
    'h02: at = 1;
    'h12: at = PTR(state);
    'h05: at = ZP(state);
    'h15: at = ZP_X(state);
    'h09: at = ABS_Y(state);
    'h19: at = 1;
    'h0D: at = ABS_X(state);
    'h1D: at = ABS(state);
  endcase

  case (state.op[7:5])
    0: ORA(state, at);
    1: AND(state, at);
    2: EOR(state, at);
    3: ADC(state, at);
    4: STA(state, at);
    5: LDA(state, at); // TODO: LDX B2
    6: CMP(state, at);
    7: SBC(state, at);
  endcase

endfunction
