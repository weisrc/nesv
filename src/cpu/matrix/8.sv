`include "../common.sv"
`include "../actions.sv"

function void column_8(inout state_t state);
  case (state.op[7:4])

    'h0: begin
      PHP(state);
      END(state, 3);
    end
    'h1: begin
      CLC(state);
      END(state, 2);
    end
    'h2: begin
      PLP(state);
      END(state, 4);
    end
    'h3: begin
      SEC(state);
      END(state, 2);
    end
    'h4: begin
      PHA(state);
      END(state, 3);
    end
    'h5: begin
      CLI(state);
      END(state, 2);
    end
    'h6: begin
      PLA(state);
      END(state, 4);
    end
    'h7: begin
      SEI(state);
      END(state, 2);
    end
    'h8: begin
      DEY(state);
      END(state, 2);
    end
    'h9: begin
      TYA(state);
      END(state, 2);
    end
    'hA: begin
      TAY(state);
      END(state, 2);
    end
    'hB: begin
      CLV(state);
      END(state, 2);
    end
    'hC: begin
      INY(state);
      END(state, 2);
    end
    'hD: begin
      CLD(state);
      END(state, 2);
    end
    'hE: begin
      INX(state);
      END(state, 2);
    end
    'hF: begin
      SED(state);
      END(state, 2);
    end

  endcase
endfunction
