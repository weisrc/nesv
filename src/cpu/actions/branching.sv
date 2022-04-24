`include "../common.sv"
`include "utils.sv"

`ifndef BRANCHING_H
`define BRANCHING_H

function void JMP(`action_args);
  if (`rel + 0) begin
    state.pc = {state.tmp, state.data};
    state.addr = state.pc;
    state.cycle = 0;
    state.rw = 1;
  end
  if (`rel + 1) done(state);
endfunction

function void B(logic value, `action_args);
  if (value) begin
    if (`rel + 0) state.pc += {8'b0, state.data};
    if (`rel + 1) done(state);
  end else begin
    if (`rel + 0) done(state);
  end
endfunction

function void BRK(`action_args);
  if (`rel + 0) push(state, state.pc[15:8]);
  if (`rel + 1) push(state, state.pc[7:0]);
  if (`rel + 2) begin
    push(state, `status);
    read(state, 'hFFFE);
  end
  if (`rel + 3) begin
    state.pc[7:0] = state.data;
    read(state, 'hFFFF);
  end
  if (`rel + 4) begin
    state.pc[15:8] = state.data;
    done(state);
  end
endfunction

function void JSR(`action_args);
  if (`rel + 0) push(state, state.pc[15:8]);
  if (`rel + 1) push(state, state.pc[7:0]);
  JMP(state, at + 2);
endfunction

function void RTS(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) begin
    state.pc[15:8] = state.data;
    pull(state);
  end
  if (`rel + 2) begin
    state.pc[7:0] = state.data;
    push(state, `status);
    read(state, 'hFFFE);
  end
  if (`rel + 3) begin
    state.pc[7:0] = state.data;
    read(state, 'hFFFF);
  end
  if (`rel + 4) begin
    state.pc[15:8] = state.data;
    done(state);
  end
endfunction

function void RTI(`action_args);
  if (`rel + 0) pull(state);
  if (`rel + 1) begin
    state.pc[15:8] = state.data;
    pull(state);
  end
  if (`rel + 2) begin
    state.pc[7:0] = state.data;
    push(state, `status);
    read(state, 'hFFFE);
  end
  if (`rel + 3) begin
    state.pc[7:0] = state.data;
    read(state, 'hFFFF);
  end
  if (`rel + 4) begin
    state.pc[15:8] = state.data;
    done(state);
  end
endfunction

`endif
