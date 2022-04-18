`include "../common.sv"
`include "../actions.sv"

function void column_C(inout state_t state);
  case (state.op[7:4])

    'h0: begin
      ABS(state, 1);
      TSB(state, 3);
      END(state, 4, 3);
    end
    'h1: begin
      ABS(state, 1);
      TRB(state, 3);
      END(state, 4, 3);
    end
    'h2: begin
      ABS(state, 1);
      BIT(state, 3);
      END(state, 4, 3);
    end
    'h3: begin
      ABS_X(state, 1);
      BIT(state, 3);
      END(state, 4, 3);
    end
    'h4: begin
      ABS(state, 1);
      JMP(state, 3);
    end
    'h5: begin

    end
    'h6: begin
      ABS_PTR(state, 1);
      JMP(state, 4);
    end
    'h7: begin
      ABS_X_PTR(state, 1);
      JMP(state, 4);
    end
    'h8: begin
      ABS(state, 1);
      STY(state, 3);
      END(state, 4, 3);
    end
    'h9: begin
      ABS(state, 1);
      STZ(state, 3);
      END(state, 5, 3);
    end
    'hA: begin
      ABS(state, 1);
      LDY(state, 3);
      END(state, 4, 3);
    end
    'hB: begin
      ABS_X(state, 1);
      LDY(state, 3);
      END(state, 4, 3);
    end
    'hC: begin
      ABS(state, 1);
      CPY(state, 3);
      END(state, 4, 3);
    end
    'hD: begin
    end
    'hE: begin
      ABS(state, 1);
      CPX(state, 3);
      END(state, 4, 3);
    end
    'hF: begin
    end

  endcase
endfunction
