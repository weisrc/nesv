`ifndef EXECUTE_H
`define EXECUTE_H

`include "common.sv"
`include "columns.sv"

function void execute(inout state_t state);
    `at(0) begin
        state.op = state.data;
        state.addr++;
        state.cycle++;
        state.rw = 0;
    end else begin
        case (state.op[3:0])
            4'h0: column_0(state);
            4'h1: column_1(state);
            4'h2: column_2(state);
            4'h3: column_3(state);
            4'h4: column_4(state);
            4'h5: column_5(state);
            4'h6: column_6(state);
            4'h7: column_7(state);
            4'h8: column_8(state);
            4'h9: column_9(state);
            4'hA: column_A(state);
            4'hB: column_B(state);
            4'hC: column_C(state);
            4'hD: column_D(state);
            4'hE: column_E(state);
            4'hF: column_F(state);
        endcase
        if (state.cycle != 0) state.cycle++;
    end
endfunction

`endif