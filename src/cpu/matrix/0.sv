`include "../common.sv"
`include "../actions.sv"

function void column_0(inout state_t state);
  case (state.op[7:4])
    'h0: begin
      // TODO: break
    end
    'h1: begin
      if (~state.negative) REL(state);
      END(state, 2);
    end
    'h2: begin
      // TODO: jump to subroutine
    end
    'h3: begin
      if (state.negative) REL(state);
      END(state, 2);
    end
    'h4: begin
      // TODO: return from interrupt
    end
    'h5: begin
      if (~state.overflow) REL(state);
      END(state, 2);
    end
    'h6: begin
      // TODO: return from subroutine
    end
    'h7: begin
      if (state.overflow) REL(state);
      END(state, 2);
    end
    'h8: REL(state);
    'h9: begin
      if (~state.carry) REL(state);
      END(state, 2);
    end
    'hA: begin
      LDY(state);
      END(state, 2);
    end
    'hB: begin
      if (state.carry) REL(state);
      END(state, 2);
    end
    'hC: begin
      CPY(state);
      END(state, 2);
    end
    'hD: begin
      if (~state.zero) REL(state);
      END(state, 2);
    end
    'hE: CPX(state);
    'hF: begin
      if (state.zero) REL(state);
      END(state, 2);
    end

  endcase
endfunction
