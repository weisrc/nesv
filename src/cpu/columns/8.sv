`include "../common.sv"
`include "../actions.sv"

function void column_8(inout state_t state);
  case (state.op[7:4])

    'h0: begin
      PHP(state, 1);
      END(state, 3, 1);
    end
    'h1: begin
      CLC(state, 1);
      END(state, 2, 1);
    end
    'h2: begin
      PLP(state, 1);
      END(state, 4, 1);
    end
    'h3: begin
      SEC(state, 1);
      END(state, 2, 1);
    end
    'h4: begin
      PHA(state, 1);
      END(state, 3, 1);
    end
    'h5: begin
      CLI(state, 1);
      END(state, 2, 1);
    end
    'h6: begin
      PLA(state, 1);
      END(state, 4, 1);
    end
    'h7: begin
      SEI(state, 1);
      END(state, 2, 1);
    end
    'h8: begin
      DEY(state, 1);
      END(state, 2, 1);
    end
    'h9: begin
      TYA(state, 1);
      END(state, 2, 1);
    end
    'hA: begin
      TAY(state, 1);
      END(state, 2, 1);
    end
    'hB: begin
      CLV(state, 1);
      END(state, 2, 1);
    end
    'hC: begin
      INY(state, 1);
      END(state, 2, 1);
    end
    'hD: begin
      CLD(state, 1);
      END(state, 2, 1);
    end
    'hE: begin
      INX(state, 1);
      END(state, 2, 1);
    end
    'hF: begin
      SED(state, 1);
      END(state, 2, 1);
    end

  endcase
endfunction
