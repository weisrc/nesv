`include "../common.sv"
`include "../actions.sv"

function void column_0(inout state_t state);
  case (state.op[7:4])
    4'h0: begin
      // TODO: break
    end
    4'h1: begin
      if (~state.negative) REL(state, 1);
      END(state, 2, 2);
    end
    4'h2: begin
      // TODO: jump to subroutine
    end
    4'h3: begin
      if (state.negative) REL(state, 1);
      END(state, 2, 2);
    end
    4'h4: begin
      // TODO: return from interrupt
    end
    4'h5: begin
      if (~state.overflow) REL(state, 1);
      END(state, 2, 2);
    end
    4'h6: begin
      // TODO: return from subroutine
    end
    4'h7: begin
      if (state.overflow) REL(state, 1);
      END(state, 2, 2);
    end
    4'h8: begin
      REL(state, 1);
      END(state, 2, 2);
    end
    4'h9: begin
      if (~state.carry) REL(state, 1);
      END(state, 2, 2);
    end
    4'hA: begin
      LDY(state, 1);
      END(state, 2, 2);
    end
    4'hB: begin
      if (state.carry) REL(state, 1);
      END(state, 2, 2);
    end
    4'hC: begin
      CPY(state, 1);
      END(state, 2, 2);
    end
    4'hD: begin
      if (~state.zero) REL(state, 1);
      END(state, 2, 2);
    end
    4'hE: begin
      CPX(state, 1);
      END(state, 2, 2);
    end
    4'hF: begin
      if (state.zero) REL(state, 1);
      END(state, 2, 2);
    end

  endcase
endfunction
