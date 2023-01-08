// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcpu.h for the primary calling header

#include "verilated.h"

#include "Vcpu___024root.h"

VL_ATTR_COLD void Vcpu___024root___eval_static(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vcpu___024root___eval_initial(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigrprev__TOP__clk = vlSelf->clk;
}

VL_ATTR_COLD void Vcpu___024root___eval_final(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_final\n"); );
}

VL_ATTR_COLD void Vcpu___024root___eval_triggers__stl(Vcpu___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vcpu___024root___dump_triggers__stl(Vcpu___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void Vcpu___024root___eval_stl(Vcpu___024root* vlSelf);

VL_ATTR_COLD void Vcpu___024root___eval_settle(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        Vcpu___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if ((0x64U < vlSelf->__VstlIterCount)) {
#ifdef VL_DEBUG
                Vcpu___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("cpu.sv", 4, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            Vcpu___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcpu___024root___dump_triggers__stl(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VstlTriggered.at(0U)) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vcpu___024root___stl_sequent__TOP__0(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___stl_sequent__TOP__0\n"); );
    // Body
    vlSelf->sync = (1U & (vlSelf->cpu__DOT__state[4U] 
                          >> 3U));
    vlSelf->negative = (1U & (vlSelf->cpu__DOT__state[4U] 
                              >> 2U));
    vlSelf->overflow = (1U & (vlSelf->cpu__DOT__state[4U] 
                              >> 1U));
    vlSelf->unused = (1U & vlSelf->cpu__DOT__state[4U]);
    vlSelf->brk = (vlSelf->cpu__DOT__state[3U] >> 0x1fU);
    vlSelf->decimal = (1U & (vlSelf->cpu__DOT__state[3U] 
                             >> 0x1eU));
    vlSelf->irqb = (1U & (vlSelf->cpu__DOT__state[3U] 
                          >> 0x1dU));
    vlSelf->zero = (1U & (vlSelf->cpu__DOT__state[3U] 
                          >> 0x1cU));
    vlSelf->carry = (1U & (vlSelf->cpu__DOT__state[3U] 
                           >> 0x1bU));
    vlSelf->cycle = (7U & (vlSelf->cpu__DOT__state[3U] 
                           >> 0x18U));
    vlSelf->acc = (0xffU & (vlSelf->cpu__DOT__state[3U] 
                            >> 8U));
    vlSelf->x = (0xffU & vlSelf->cpu__DOT__state[3U]);
    vlSelf->y = (vlSelf->cpu__DOT__state[2U] >> 0x18U);
    vlSelf->sp = (0xffU & (vlSelf->cpu__DOT__state[2U] 
                           >> 0x10U));
    vlSelf->op = (0xffU & (vlSelf->cpu__DOT__state[2U] 
                           >> 8U));
    vlSelf->tmp = (0xffU & vlSelf->cpu__DOT__state[2U]);
    vlSelf->err = (vlSelf->cpu__DOT__state[1U] >> 0x18U);
    vlSelf->addr = (0xffffU & (vlSelf->cpu__DOT__state[1U] 
                               >> 8U));
    vlSelf->pc = (0xffffU & ((vlSelf->cpu__DOT__state[1U] 
                              << 8U) | (vlSelf->cpu__DOT__state[0U] 
                                        >> 0x18U)));
    vlSelf->mnemonic = (0xffffffU & vlSelf->cpu__DOT__state[0U]);
    vlSelf->rw = (1U & (vlSelf->cpu__DOT__state[4U] 
                        >> 4U));
    vlSelf->sdata = (0xffU & (vlSelf->cpu__DOT__state[3U] 
                              >> 0x10U));
    vlSelf->data = (((IData)(vlSelf->rw) ? 0xffU : 0U) 
                    & (((IData)(vlSelf->rw) ? (IData)(vlSelf->sdata)
                         : 0U) & ((IData)(vlSelf->rw)
                                   ? 0xffU : 0U)));
}

VL_ATTR_COLD void Vcpu___024root___eval_stl(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_stl\n"); );
    // Body
    if (vlSelf->__VstlTriggered.at(0U)) {
        Vcpu___024root___stl_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcpu___024root___dump_triggers__act(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VactTriggered.at(0U)) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcpu___024root___dump_triggers__nba(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VnbaTriggered.at(0U)) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vcpu___024root___ctor_var_reset(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->ready = VL_RAND_RESET_I(1);
    vlSelf->rw = VL_RAND_RESET_I(1);
    vlSelf->sync = VL_RAND_RESET_I(1);
    vlSelf->negative = VL_RAND_RESET_I(1);
    vlSelf->overflow = VL_RAND_RESET_I(1);
    vlSelf->unused = VL_RAND_RESET_I(1);
    vlSelf->brk = VL_RAND_RESET_I(1);
    vlSelf->decimal = VL_RAND_RESET_I(1);
    vlSelf->irqb = VL_RAND_RESET_I(1);
    vlSelf->zero = VL_RAND_RESET_I(1);
    vlSelf->carry = VL_RAND_RESET_I(1);
    vlSelf->cycle = VL_RAND_RESET_I(3);
    vlSelf->data = 0;
    vlSelf->sdata = 0;
    vlSelf->acc = 0;
    vlSelf->x = 0;
    vlSelf->y = 0;
    vlSelf->sp = 0;
    vlSelf->op = 0;
    vlSelf->tmp = 0;
    vlSelf->err = 0;
    vlSelf->addr = 0;
    vlSelf->pc = 0;
    vlSelf->mnemonic = VL_RAND_RESET_I(24);
    VL_RAND_RESET_W(133, vlSelf->cpu__DOT__state);
    vlSelf->__VstlIterCount = 0;
    vlSelf->__Vtrigrprev__TOP__clk = VL_RAND_RESET_I(1);
    vlSelf->__VactIterCount = 0;
    vlSelf->__VactContinue = 0;
}
