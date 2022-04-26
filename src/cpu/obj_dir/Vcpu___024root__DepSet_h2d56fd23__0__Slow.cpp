// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcpu.h for the primary calling header

#include "verilated.h"

#include "Vcpu___024root.h"

VL_ATTR_COLD void Vcpu___024root___settle__TOP__0(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___settle__TOP__0\n"); );
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
    vlSelf->sdata = (0xffU & (vlSelf->cpu__DOT__state[3U] 
                              >> 0x10U));
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
    vlSelf->data = ((((IData)(vlSelf->rw) ? ((vlSelf->cpu__DOT__state[3U] 
                                              << 0x10U) 
                                             | (vlSelf->cpu__DOT__state[3U] 
                                                >> 0x10U))
                       : 0U) & ((IData)(vlSelf->rw)
                                 ? 0xffU : 0U)) & ((IData)(vlSelf->rw)
                                                    ? 0xffU
                                                    : 0U));
}

VL_ATTR_COLD void Vcpu___024root___eval_initial(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vclklast__TOP__clk = vlSelf->clk;
}

VL_ATTR_COLD void Vcpu___024root___eval_settle(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_settle\n"); );
    // Body
    Vcpu___024root___settle__TOP__0(vlSelf);
}

VL_ATTR_COLD void Vcpu___024root___final(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___final\n"); );
}

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
}
