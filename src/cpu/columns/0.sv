`include "../common.sv"
`include "../actions.sv"
`column(0)

4'h0: begin
    // TODO: break
end
4'h1: begin
    if (state.negative == 0) relative(state, 1);
    done(state, 2, 2);
end
4'h2: begin
    // TODO: jump to subroutine
end
4'h3: begin
    if (state.negative == 1) relative(state, 1);
    done(state, 2, 2);
end
4'h4: begin
    // TODO: return from interrupt
end
4'h5: begin
    if (state.overflow == 0) relative(state, 1);
    done(state, 2, 2);
end
4'h6: begin
    // TODO: return from subroutine
end
4'h7: begin
    if (state.overflow == 1) relative(state, 1);
    done(state, 2, 2);
end
4'h8: begin
    relative(state, 1);
    done(state, 2, 2);
end
4'h9: begin
    if (state.carry == 0) relative(state, 1);
    done(state, 2, 2);
end
4'hA: begin
    LDY(state, 1);
    done(state, 2, 2);
end
4'hB: begin
    if (state.carry == 1) relative(state, 1);
    done(state, 2, 2);
end
4'hC: begin
    CPY(state, 1);
    done(state, 2, 2);
end
4'hD: begin
    if (state.zero == 0) relative(state, 1);
    done(state, 2, 2);
end
4'hE: begin
    CPX(state, 1);
    done(state, 2, 2);
end
4'hF: begin
    if (state.zero == 1) relative(state, 1);
    done(state, 2, 2);
end

`endcolumn