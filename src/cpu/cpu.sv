`include "common.sv"
`include "execute.sv"

module cpu (
    input  logic      clk,
    ready,
    output logic      rw,
    sync,
    negative,
    overflow,
    unused,
    brk,
    decimal,
    irqb,
    zero,
    carry,
    output cycle_t    cycle,
    inout  byte       data,
    output byte       sdata,
    acc,
    x,
    y,
    sp,
    op,
    tmp,
    err,
    output shortint   addr,
    pc,
    output mnemonic_t mnemonic
);
  state_t state;
  assign {rw, sync, negative, overflow, unused, brk, decimal, irqb, zero, carry, cycle, sdata, acc,
          x, y, sp, op, tmp, err, addr, pc, mnemonic} = state;

  assign data = rw ? 8'bz : state.data;

  always @(posedge clk) begin
    if (~rw) state.data = data;
    if (ready) begin
      if (state.cycle == 0) state.sync = 1;
      execute(state);
    end
  end
endmodule
