`include "../common.sv"
`include "../actions.sv"

function void column_6(inout state_t state);

  if (state.op[4]) begin
    ZP_X(state, 1);
    END(state, 6, 2);
  end else begin
    ZP(state, 1);
    END(state, 5, 2);
  end

  case (state.op[7:5])
    0: ASL(state, 2);
    1: ROL(state, 2);
    2: LSR(state, 2);
    3: ROR(state, 2);
    4: STX(state, 2);
    5: LDX(state, 2);
    6: DEC(state, 2);
    7: INC(state, 2);
  endcase

endfunction
