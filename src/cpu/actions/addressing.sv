`ifndef ADDRESSING_H
`define ADDRESSING_H

`include "../common.sv"

function void ABS(`action_args);
  if (`rel + 0) begin
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 1) state.addr = {state.data, state.tmp};
endfunction

function void ABS_X_PTR(`action_args);
  if (`rel + 0) begin
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 1) state.addr = {state.data, state.tmp} + {8'b0, state.x};
  if (`rel + 2) begin
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 3) state.pc = {state.tmp, state.data};
endfunction

function void ABS_X(`action_args);
  if (`rel + 0) begin
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 1) state.addr = {state.data, state.tmp} + {8'b0, state.x};
endfunction

function void ABS_Y(`action_args);
  if (`rel + 0) begin
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 1) state.addr = {state.data, state.tmp} + {8'b0, state.y};
endfunction

function void ABS_PTR(`action_args);
  if (`rel + 0) begin
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 1) state.addr = {state.data, state.tmp};
  if (`rel + 2) begin
    state.tmp = state.data;
    state.addr++;
  end
  if (`rel + 3) state.pc = {state.tmp, state.data};
endfunction

function void REL(`action_args);
  if (`rel + 0) state.addr = state.pc + {8'b0, state.data};
endfunction

function void STACK(`action_args);
  if (`rel + 0) state.addr = {8'b1, state.sp};
endfunction

function void X_PTR(`action_args);
  if (`rel + 0) state.addr = {8'b0, state.data + state.x};
  if (`rel + 1) state.addr = {8'b0, state.data};
endfunction

function void PTR(`action_args);
  if (`rel + 0) state.addr = {8'b0, state.data};
  if (`rel + 1) state.addr = {8'b0, state.data};
endfunction

function void PTR_Y(`action_args);
  if (`rel + 0) state.addr = {8'b0, state.data};
  if (`rel + 1) state.addr = {8'b0, state.data + state.y};
endfunction

function void ZP(`action_args);
  if (`rel + 0) state.addr = {8'b0, state.data};
endfunction

function void ZP_X(`action_args);
  if (`rel + 0) state.addr = {8'b0, state.data + state.x};
endfunction

function void ZP_Y(`action_args);
  if (`rel + 0) state.addr = {8'b0, state.data + state.y};
endfunction

`endif
