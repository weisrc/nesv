`include "../common.sv"
`include "../actions.sv"

function void column_4(inout state_t state);

  cycle_t at = state.op[4] ? ZP_X(state) : ZP(state);

  case (state.op[7:4])

    'h2: BIT(state, at);
    'h8, 'h9: STY(state, at);
    'hA, 'hB: LDY(state, at);
    'hC: CPY(state, at);
    'hE: CPX(state, at);
    default: ERR(1, state);

  endcase
endfunction
