`include "../common.sv"
`include "../actions.sv"

function void column_6(inout state_t state);

  cycle_t at = state.op[4] ? ZP_X(state) : ZP(state);

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
