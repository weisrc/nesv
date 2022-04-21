`include "../common.sv"
`include "../actions.sv"

function void column_C(inout state_t state);
  case (state.op[7:4])

    'h0: begin
      TSB(state, ABS(state));
      END(state, 4);
    end
    'h1: begin
      TRB(state, ABS(state));
      END(state, 4);
    end
    'h2: begin
      BIT(state, ABS(state));
      END(state, 4);
    end
    'h3: begin
      BIT(state, ABS(state));
      END(state, 4);
    end
    'h4: JMP(state, ABS(state));
    'h5: begin

    end
    'h6: begin
      JMP(state, ABS_PTR(state));
    end
    'h7: begin
      JMP(state, ABS_X_PTR(state));
    end
    'h8: begin
      STY(state, ABS(state));
      END(state, 4);
    end
    'h9: begin
      STZ(state, ABS(state));
      END(state, 5);
    end
    'hA: begin
      LDY(state, ABS(state));
      END(state, 4);
    end
    'hB: begin
      LDY(state, ABS_X(state));
      END(state, 4);
    end
    'hC: begin
      CPY(state, ABS(state));
      END(state, 4);
    end
    'hD: begin
    end
    'hE: begin
      CPX(state, ABS(state));
      END(state, 4);
    end
    'hF: begin
    end

  endcase
endfunction
