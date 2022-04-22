`include "../common.sv"
`include "../actions.sv"

function void column_A(inout state_t state);
  case (state.op[7:4])

    'h0: ASA(state);
    'h1: INA(state);
    'h2: RLA(state);
    'h3: DEA(state);
    'h4: LSA(state);
    'h5: PHY(state);
    'h6: RRA(state);
    'h7: PLY(state);
    'h8: TXA(state);
    'h9: TXS(state);
    'hA: TAX(state);
    'hB: TSX(state);
    'hC: DEX(state);
    'hD: PHX(state);
    'hE: NOP(state);
    'hF: PLX(state);

  endcase
endfunction
