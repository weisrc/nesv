`include "../common.svh"

`action(read_ind_x)
    `rel(0) state.addr <= {8'b0, state.x + state.data};
    `rel(1) state.tmp = state.data;
`endaction