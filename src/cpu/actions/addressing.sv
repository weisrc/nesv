`ifndef ADDRESSING_H
`define ADDRESSING_H

`include "../common.sv"

function cycle_t ABS(`action_args);
  if (`rel + 0) begin
    state.pc += 3;
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 1) state.addr = {state.data, state.tmp};
  return at + 2;
endfunction

function cycle_t ABS_X_PTR(`action_args);
  if (`rel + 0) begin
    state.pc += 3;
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 1) state.addr = {state.data, state.tmp} + {8'b0, state.x};
  if (`rel + 2) begin
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 3) state.pc = {state.tmp, state.data};
  return at + 4;
endfunction

function cycle_t ABS_X(`action_args);
  if (`rel + 0) begin
    state.pc += 3;
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 1) state.addr = {state.data, state.tmp} + {8'b0, state.x};
  return at + 2;
endfunction

function cycle_t ABS_Y(`action_args);
  if (`rel + 0) begin
    state.pc += 3;
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 1) state.addr = {state.data, state.tmp} + {8'b0, state.y};
  return at + 2;
endfunction

function cycle_t ABS_PTR(`action_args);
  if (`rel + 0) begin
    state.pc += 3;
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 1) state.addr = {state.data, state.tmp};
  if (`rel + 2) begin
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 3) state.pc = {state.tmp, state.data};
  return at + 4;
endfunction

function cycle_t X_PTR(`action_args);
  if (`rel + 0) begin
    state.pc += 2;
    state.addr = {8'b0, state.data + state.x};
  end
  if (`rel + 1) state.addr = {8'b0, state.data};
  return at + 2;
endfunction

function cycle_t PTR(`action_args);
  if (`rel + 0) begin
    state.pc += 2;
    state.addr = {8'b0, state.data};
  end
  if (`rel + 1) state.addr = {8'b0, state.data};
  return at + 2;
endfunction

function cycle_t PTR_Y(`action_args);
  if (`rel + 0) begin
    state.pc += 2;
    state.addr = {8'b0, state.data};
  end
  if (`rel + 1) state.addr = {8'b0, state.data + state.y};
  return at + 2;
endfunction

function cycle_t ZP(`action_args);
  if (`rel + 0) begin
    state.pc += 2;
    state.addr = {8'b0, state.data};
  end
  return at + 1;
endfunction

function cycle_t ZP_X(`action_args);
  if (`rel + 0) begin
    state.pc += 2;
    state.addr = {8'b0, state.data + state.x};
  end
  return at + 1;
endfunction

function cycle_t ZP_Y(`action_args);
  if (`rel + 0) begin
    state.pc += 2;
    state.addr = {8'b0, state.data + state.y};
  end
  return at + 1;
endfunction

`endif
