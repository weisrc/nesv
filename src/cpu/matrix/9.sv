`include "../common.sv"
`include "../actions.sv"

function void column_9(inout state_t state);

  cycle_t at = state.op[4] ? 1 : ABS_Y(state);

  case (state.op[7:5])
    0: ORA(state, at);
    1: AND(state, at);
    2: EOR(state, at);
    3: ADC(state, at);
    4: STA(state, at);
    5: LDA(state, at);
    6: CMP(state, at);
    7: SBC(state, at);
  endcase
endfunction
