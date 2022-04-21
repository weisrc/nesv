`include "../common.sv"
`include "../actions.sv"

function void column_A(inout state_t state);
  case (state.op[7:4])

    'h0: begin
      ASA(state);
      END(state, 2);
    end
    'h1: begin
      INA(state);
      END(state, 2);
    end
    'h2: begin
      RLA(state);
      END(state, 2);
    end
    'h3: begin
      DEA(state);
      END(state, 2);
    end
    'h4: begin
      LSA(state);
      END(state, 2);
    end
    'h5: begin
      PHY(state);
      END(state, 3);
    end
    'h6: begin
      RRA(state);
      END(state, 2);
    end
    'h7: begin
      PLY(state);
      END(state, 4);
    end
    'h8: begin
      TXA(state);
      END(state, 2);
    end
    'h9: begin
      TXS(state);
      END(state, 2);
    end
    'hA: begin
      TAX(state);
      END(state, 2);
    end
    'hB: begin
      TSX(state);
      END(state, 2);
    end
    'hC: begin
      DEX(state);
      END(state, 2);
    end
    'hD: begin
      PHX(state);
      END(state, 3);
    end
    'hE: begin
      // NOP
      END(state, 2);
    end
    'hF: begin
      PLX(state);
      END(state, 4);
    end

  endcase
endfunction
