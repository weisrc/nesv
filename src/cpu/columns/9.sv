`include "../common.sv"
`include "../actions.sv"

function void column_9(inout state_t state);
  if (state.op[4]) begin
    END(state, 2, 2);
  end else begin
    ABS_Y(state, 1);
    END(state, 5, 2);
  end
  case (state.op[7:5])
    0: ORA(state, 2);
    1: AND(state, 2);
    2: EOR(state, 2);
    3: ADC(state, 2);
    4: STA(state, 2);
    5: LDA(state, 2);
    6: CMP(state, 2);
    7: SBC(state, 2);
  endcase
endfunction
