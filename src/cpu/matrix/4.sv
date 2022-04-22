`include "../common.sv"
`include "../actions.sv"

function void column_4(inout state_t state);

  cycle_t at = state.op[4] ? ZP_X(state) : ZP(state);

  case (state.op[7:4])

    'h0: TSB(state, at);
    'h1: TRB(state, at);
    'h2, 'h3: BIT(state, at);
    'h4, 'h5: begin
    end
    'h6, 'h7: STZ(state, at);
    'h8, 'h9: STY(state, at);
    'hA, 'hB: LDY(state, at);
    'hC, 'hD: CPY(state, at);
    'hE, 'hF: CPX(state, at);

  endcase
endfunction
