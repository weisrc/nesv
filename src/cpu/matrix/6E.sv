`include "../common.sv"
`include "../actions.sv"

function void column_6E(inout state_t state);

  cycle_t at;

  case (state.op[4:0])
    'h06: at = ZP(state);
    'h16: at = ZP_X(state);
    'h0E: at = ABS(state);
    'h1E: at = ABS_X(state);
  endcase

  case (state.op[7:5])
    0: ASL(state, at);
    1: ROL(state, at);
    2: LSR(state, at);
    3: ROR(state, at);
    4: STX(state, at);
    5: LDX(state, at);
    6: DEC(state, at);
    7: INC(state, at);
  endcase

endfunction
