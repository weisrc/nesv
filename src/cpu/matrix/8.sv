`include "../common.sv"
`include "../actions.sv"

function void column_8(inout state_t state);
  case (state.op[7:4])
    'h0: PHP(state);
    'h1: CLC(state);
    'h2: PLP(state);
    'h3: SEC(state);
    'h4: PHA(state);
    'h5: CLI(state);
    'h6: PLA(state);
    'h7: SEI(state);
    'h8: DEY(state);
    'h9: TYA(state);
    'hA: TAY(state);
    'hB: CLV(state);
    'hC: INY(state);
    'hD: CLD(state);
    'hE: INX(state);
    'hF: SED(state);
  endcase
endfunction
