// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vcpu.h for the primary calling header

#ifndef VERILATED_VCPU___024UNIT_H_
#define VERILATED_VCPU___024UNIT_H_  // guard

#include "verilated.h"

class Vcpu__Syms;
VL_MODULE(Vcpu___024unit) {
  public:

    // INTERNAL VARIABLES
    Vcpu__Syms* vlSymsp;  // Symbol table

    // CONSTRUCTORS
    Vcpu___024unit(const char* name);
    ~Vcpu___024unit();
    VL_UNCOPYABLE(Vcpu___024unit);

    // INTERNAL METHODS
    void __Vconfigure(Vcpu__Syms* symsp, bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
