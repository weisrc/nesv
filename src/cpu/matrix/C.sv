`include "../common.sv"
`include "../actions.sv"

function void column_C(inout state_t state);
  case (state.op[7:4])

    'h0: TSB(state, ABS(state));
    'h1: TRB(state, ABS_X(state));
    'h2, 'h3: BIT(state, ABS(state));
    'h4: JMP(state, ABS(state));
    'h6: JMP(state, ABS_PTR(state));
    'h7: JMP(state, ABS_X_PTR(state));
    'h8: STY(state, ABS(state));
    'h9: STZ(state, ABS(state));
    'hA: LDY(state, ABS(state));
    'hB: LDY(state, ABS_X(state));
    'hC: CPY(state, ABS(state));
    'hE: CPX(state, ABS(state));
    default: ERR(1, state);

  endcase
endfunction
