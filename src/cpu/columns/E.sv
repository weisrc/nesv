`include "../common.sv"
`include "../actions.sv"

function void column_E(inout state_t state);

  if (state.op[4]) begin
    ABS_X(state, 1);
    END(state, 6, 3);
  end else begin
    ABS(state, 1);
    END(state, 7, 3);
  end

  case (state.op[7:5])
    0: ASL(state, 3);
    1: ROL(state, 3);
    2: LSR(state, 3);
    3: ROR(state, 3);
    4: STX(state, 3);
    5: LDX(state, 3);
    6: DEC(state, 3);
    7: INC(state, 3);
  endcase

endfunction