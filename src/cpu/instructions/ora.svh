`include "../common.svh"

`action(ora)
    `rel(0) state.acc <= state.acc | state.tmp;
`endaction