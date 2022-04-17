`include "../common.sv"
`include "../actions.sv"
function void column_1(inout state_t state); case (state.op[7:4])

4'h0: begin
    X_PTR(state, 1);
    ORA(state, 4);
    done(state, 6, 2);
end
4'h1: begin
    PTR_Y(state, 1);
    ORA(state, 3);
    done(state, 6, 2);
end
4'h2: begin
    X_PTR(state, 1);
    AND(state, 4);
    done(state, 6, 2);
end
4'h3: begin
    PTR_Y(state, 1);
    AND(state, 3);
    done(state, 6, 2);
end
4'h4: begin
    X_PTR(state, 1);
    EOR(state, 4);
    done(state, 6, 2);
end
4'h5: begin
    PTR_Y(state, 1);
    EOR(state, 3);
    done(state, 6, 2);
end
4'h6: begin
    X_PTR(state, 1);
    ADC(state, 4);
    done(state, 6, 2);
end
4'h7: begin
    PTR_Y(state, 1);
    ADC(state, 3);
    done(state, 6, 2);
end
4'h8: begin
    X_PTR(state, 1);
    STA(state, 4);
    done(state, 6, 2);
end
4'h9: begin
    PTR_Y(state, 1);
    ADC(state, 3);
    done(state, 6, 2);
end
4'hA: begin

end
4'hB: begin

end
4'hC: begin

end
4'hD: begin

end
4'hE: begin

end
4'hF: begin

end

endcase endfunction