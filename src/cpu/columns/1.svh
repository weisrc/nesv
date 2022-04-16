`include "../common.svh"
`include "../modes.svh"
`include "../instructions.svh"
`column(1)

4'h0: begin 
    read_ind_x(state, 1);
    ora(state, 3);
    done(state, 6, 2);
end
4'h1: begin end
4'h2: begin end
4'h3: begin end
4'h4: begin end
4'h5: begin end
4'h6: begin end
4'h7: begin end
4'h8: begin end
4'h9: begin end
4'hA: begin end
4'hB: begin end
4'hC: begin end
4'hD: begin end
4'hE: begin end
4'hF: begin end

`endcolumn