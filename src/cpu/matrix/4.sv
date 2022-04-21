`include "../common.sv"
`include "../actions.sv"

function void column_4(inout state_t state);

  if (state.op[4]) begin
    ZP_X(state);
    END(state, 4);
  end else begin
    ZP(state);
    END(state, 3);
  end

  case (state.op[7:4])

    'h0: TSB(state, 2);
    'h1: TRB(state, 2);
    'h2, 'h3: BIT(state, 2);
    'h4, 'h5: begin
    end
    'h6, 'h7: STZ(state, 2);
    'h8, 'h9: STY(state, 2);
    'hA, 'hB: LDY(state, 2);
    'hC, 'hD: CPY(state, 2);
    'hE, 'hF: CPX(state, 2);

  endcase
endfunction
