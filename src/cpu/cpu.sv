`include "common.sv"
`include "execute.sv"

module cpu (
    input  wire        clk,
    output wire        rw,
    negative,
    overflow,
    unused,
    brk,
    decimal,
    irqb,
    zero,
    carry,
    output wire [ 3:0] cycle,
    inout  wire [ 7:0] data,
    output wire [ 7:0] sdata,
    acc,
    x,
    y,
    sp,
    op,
    tmp,
    output wire [15:0] addr,
    pc
);
  state_t state;
  assign {rw, negative, overflow, unused, brk, decimal, irqb, zero, carry, cycle, sdata, acc, x, y, sp, op,
          tmp, addr, pc} = state;

  assign data = rw ? 8'bz : state.data;

  always @(posedge clk) begin
    if (~rw) state.data = data;
    execute(state);
  end
endmodule
