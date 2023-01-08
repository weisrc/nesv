// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vcpu.h for the primary calling header

#ifndef VERILATED_VCPU___024ROOT_H_
#define VERILATED_VCPU___024ROOT_H_  // guard

#include "verilated.h"

class Vcpu__Syms;
class Vcpu___024unit;


class Vcpu___024root final : public VerilatedModule {
  public:
    // CELLS
    Vcpu___024unit* __PVT____024unit;

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(ready,0,0);
    VL_OUT8(rw,0,0);
    VL_OUT8(sync,0,0);
    VL_OUT8(negative,0,0);
    VL_OUT8(overflow,0,0);
    VL_OUT8(unused,0,0);
    VL_OUT8(brk,0,0);
    VL_OUT8(decimal,0,0);
    VL_OUT8(irqb,0,0);
    VL_OUT8(zero,0,0);
    VL_OUT8(carry,0,0);
    VL_OUT8(cycle,2,0);
    VL_INOUT8(data,7,0);
    VL_OUT8(sdata,7,0);
    VL_OUT8(acc,7,0);
    VL_OUT8(x,7,0);
    VL_OUT8(y,7,0);
    VL_OUT8(sp,7,0);
    VL_OUT8(op,7,0);
    VL_OUT8(tmp,7,0);
    VL_OUT8(err,7,0);
    CData/*0:0*/ __Vtrigrprev__TOP__clk;
    CData/*0:0*/ __VactContinue;
    VL_OUT16(addr,15,0);
    VL_OUT16(pc,15,0);
    VL_OUT(mnemonic,24,1);
    IData/*31:0*/ __VstlIterCount;
    IData/*31:0*/ __VactIterCount;
    VlWide<5>/*132:0*/ cpu__DOT__state;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vcpu__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vcpu___024root(Vcpu__Syms* symsp, const char* name);
    ~Vcpu___024root();
    VL_UNCOPYABLE(Vcpu___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
