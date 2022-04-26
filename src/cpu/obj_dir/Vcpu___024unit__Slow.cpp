// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcpu.h for the primary calling header

#include "verilated.h"

#include "Vcpu__Syms.h"
#include "Vcpu___024unit.h"

void Vcpu___024unit___ctor_var_reset(Vcpu___024unit* vlSelf);

Vcpu___024unit::Vcpu___024unit(const char* _vcname__)
    : VerilatedModule(_vcname__)
 {
    // Reset structure values
    Vcpu___024unit___ctor_var_reset(this);
}

void Vcpu___024unit::__Vconfigure(Vcpu__Syms* _vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->vlSymsp = _vlSymsp;
}

Vcpu___024unit::~Vcpu___024unit() {
}
