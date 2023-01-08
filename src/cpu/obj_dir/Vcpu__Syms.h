// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VCPU__SYMS_H_
#define VERILATED_VCPU__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vcpu.h"

// INCLUDE MODULE CLASSES
#include "Vcpu___024root.h"
#include "Vcpu___024unit.h"

// SYMS CLASS (contains all model state)
class Vcpu__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vcpu* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vcpu___024root                 TOP;
    Vcpu___024unit                 TOP____024unit;

    // CONSTRUCTORS
    Vcpu__Syms(VerilatedContext* contextp, const char* namep, Vcpu* modelp);
    ~Vcpu__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
