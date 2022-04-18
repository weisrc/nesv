#include <stdio.h>
#include <iostream>
#include <bitset>
#include <verilated.h>
#include <verilated_vcd_c.h>
#include "Vcpu.h"
#include "Vcpu___024unit.h"

const vluint64_t MAX_TIME = 50;

int main()
{
    vluint64_t time = 0;
    Vcpu *cpu = new Vcpu;

    SData rom[] = {
        0x01, 0x05};

    while (time++ < MAX_TIME)
    {
        if (cpu->rw == 0)
        {
            cpu->data = rom[cpu->addr];
        }
        cpu->clk ^= 1;
        cpu->eval();
        if (cpu->clk)
            printf("@%d op=%d cycle=%d data=%d x=%d y=%d acc=%d\n", cpu->addr, cpu->op, cpu->cycle, cpu->data, cpu->x, cpu->y, cpu->acc);
    }
}