// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary model header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef VERILATED_VCPU_H_
#define VERILATED_VCPU_H_  // guard

#include "verilated.h"

class Vcpu__Syms;
class Vcpu___024root;
class Vcpu___024unit;


// This class is the main interface to the Verilated model
class Vcpu VL_NOT_FINAL : public VerilatedModel {
  private:
    // Symbol table holding complete model state (owned by this class)
    Vcpu__Syms* const vlSymsp;

  public:

    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(&clk,0,0);
    VL_IN8(&ready,0,0);
    VL_OUT8(&rw,0,0);
    VL_OUT8(&sync,0,0);
    VL_OUT8(&negative,0,0);
    VL_OUT8(&overflow,0,0);
    VL_OUT8(&unused,0,0);
    VL_OUT8(&brk,0,0);
    VL_OUT8(&decimal,0,0);
    VL_OUT8(&irqb,0,0);
    VL_OUT8(&zero,0,0);
    VL_OUT8(&carry,0,0);
    VL_OUT8(&cycle,2,0);
    VL_INOUT8(&data,7,0);
    VL_OUT8(&sdata,7,0);
    VL_OUT8(&acc,7,0);
    VL_OUT8(&x,7,0);
    VL_OUT8(&y,7,0);
    VL_OUT8(&sp,7,0);
    VL_OUT8(&op,7,0);
    VL_OUT8(&tmp,7,0);
    VL_OUT8(&err,7,0);
    VL_OUT16(&addr,15,0);
    VL_OUT16(&pc,15,0);
    VL_OUT(&mnemonic,24,1);

    // CELLS
    // Public to allow access to /* verilator public */ items.
    // Otherwise the application code can consider these internals.
    Vcpu___024unit* const __PVT____024unit;

    // Root instance pointer to allow access to model internals,
    // including inlined /* verilator public_flat_* */ items.
    Vcpu___024root* const rootp;

    // CONSTRUCTORS
    /// Construct the model; called by application code
    /// If contextp is null, then the model will use the default global context
    /// If name is "", then makes a wrapper with a
    /// single model invisible with respect to DPI scope names.
    explicit Vcpu(VerilatedContext* contextp, const char* name = "TOP");
    explicit Vcpu(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    virtual ~Vcpu();
  private:
    VL_UNCOPYABLE(Vcpu);  ///< Copying not allowed

  public:
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    /// Are there scheduled events to handle?
    bool eventsPending();
    /// Returns time at next time slot. Aborts if !eventsPending()
    uint64_t nextTimeSlot();
    /// Retrieve name of this model instance (as passed to constructor).
    const char* name() const;

    // Abstract methods from VerilatedModel
    const char* hierName() const override final;
    const char* modelName() const override final;
    unsigned threads() const override final;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
