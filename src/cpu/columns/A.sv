`include "../common.sv"
`include "../actions.sv"

function void column_A(inout state_t state);
  case (state.op[7:4])

    'h0: begin
      ASL_ACC(state, 1);
      END(state, 2, 1);
    end
    'h1: begin
      INC_ACC(state, 1);
      END(state, 2, 1);
    end
    'h2: begin
      ROL_ACC(state, 1);
      END(state, 2, 1);
    end
    'h3: begin
      DEC_ACC(state, 1);
      END(state, 2, 1);
    end
    'h4: begin
      LSR_ACC(state, 1);
      END(state, 2, 1);
    end
    'h5: begin
      PHY(state, 1);
      END(state, 3, 1);
    end
    'h6: begin
      ROR_ACC(state, 1);
      END(state, 2, 1);
    end
    'h7: begin
      PLY(state, 1);
      END(state, 4, 1);
    end
    'h8: begin
      TXA(state, 1);
      END(state, 2, 1);
    end
    'h9: begin
      TXS(state, 1);
      END(state, 2, 1);
    end
    'hA: begin
      TAX(state, 1);
      END(state, 2, 1);
    end
    'hB: begin
      TSX(state, 1);
      END(state, 2, 1);
    end
    'hC: begin
      DEX(state, 1);
      END(state, 2, 1);
    end
    'hD: begin
      PHX(state, 1);
      END(state, 3, 1);
    end
    'hE: begin
      // NOP
      END(state, 2, 1);
    end
    'hF: begin
      PLX(state, 1);
      END(state, 4, 1);
    end

  endcase
endfunction
