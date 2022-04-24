`include "../common.sv"
`include "../actions.sv"

function void column_0(inout state_t state);
  case (state.op[7:4])
    'h0: BRK(state);
    'h1: B(~state.negative, state);
    'h2: JSR(state, ABS(state));
    'h3: B(state.negative, state);
    'h4: RTI(state);
    'h5: B(~state.overflow, state);
    'h6: RTS(state);
    'h7: B(state.overflow, state);
    'h8: B(1, state);
    'h9: B(~state.carry, state);
    'hA: LDY(state);
    'hB: B(state.carry, state);
    'hC: CPY(state);
    'hD: B(~state.zero, state);
    'hE: CPX(state);
    'hF: B(state.zero, state);

  endcase
endfunction
