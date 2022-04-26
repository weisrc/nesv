// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vcpu.h"
#include "Vcpu__Syms.h"

//============================================================
// Constructors

Vcpu::Vcpu(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new Vcpu__Syms(_vcontextp__, _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , ready{vlSymsp->TOP.ready}
    , rw{vlSymsp->TOP.rw}
    , sync{vlSymsp->TOP.sync}
    , negative{vlSymsp->TOP.negative}
    , overflow{vlSymsp->TOP.overflow}
    , unused{vlSymsp->TOP.unused}
    , brk{vlSymsp->TOP.brk}
    , decimal{vlSymsp->TOP.decimal}
    , irqb{vlSymsp->TOP.irqb}
    , zero{vlSymsp->TOP.zero}
    , carry{vlSymsp->TOP.carry}
    , cycle{vlSymsp->TOP.cycle}
    , data{vlSymsp->TOP.data}
    , sdata{vlSymsp->TOP.sdata}
    , acc{vlSymsp->TOP.acc}
    , x{vlSymsp->TOP.x}
    , y{vlSymsp->TOP.y}
    , sp{vlSymsp->TOP.sp}
    , op{vlSymsp->TOP.op}
    , tmp{vlSymsp->TOP.tmp}
    , err{vlSymsp->TOP.err}
    , addr{vlSymsp->TOP.addr}
    , pc{vlSymsp->TOP.pc}
    , mnemonic{vlSymsp->TOP.mnemonic}
    , __PVT____024unit{vlSymsp->TOP.__PVT____024unit}
    , rootp{&(vlSymsp->TOP)}
{
}

Vcpu::Vcpu(const char* _vcname__)
    : Vcpu(nullptr, _vcname__)
{
}

//============================================================
// Destructor

Vcpu::~Vcpu() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void Vcpu___024root___eval_initial(Vcpu___024root* vlSelf);
void Vcpu___024root___eval_settle(Vcpu___024root* vlSelf);
void Vcpu___024root___eval(Vcpu___024root* vlSelf);
#ifdef VL_DEBUG
void Vcpu___024root___eval_debug_assertions(Vcpu___024root* vlSelf);
#endif  // VL_DEBUG
void Vcpu___024root___final(Vcpu___024root* vlSelf);

static void _eval_initial_loop(Vcpu__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    Vcpu___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        Vcpu___024root___eval_settle(&(vlSymsp->TOP));
        Vcpu___024root___eval(&(vlSymsp->TOP));
    } while (0);
}

void Vcpu::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vcpu::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vcpu___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        Vcpu___024root___eval(&(vlSymsp->TOP));
    } while (0);
    // Evaluate cleanup
}

//============================================================
// Utilities

VerilatedContext* Vcpu::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* Vcpu::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

VL_ATTR_COLD void Vcpu::final() {
    Vcpu___024root___final(&(vlSymsp->TOP));
}
