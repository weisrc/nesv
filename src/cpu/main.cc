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

    SData ram[65536] = {
        0x01, 0x01, 0x01};

    cpu->ready = 1;

    while (time++ < MAX_TIME)
    {
        if (cpu->rw == 0)
            cpu->data = ram[cpu->addr];
        else
            ram[cpu->addr] = cpu->data;

        cpu->clk ^= 1;
        cpu->eval();
        if (cpu->clk)
        {
            switch (cpu->err)
            {
            case 0:
                printf("@%X pc=%X op=%X cycle=%X data=%X x=%X y=%X acc=%X\n",
                       cpu->addr, cpu->pc, cpu->op, cpu->cycle, cpu->data, cpu->x, cpu->y, cpu->acc);
                break;
            case 1:
                printf("error: illegal instruction %X\n", cpu->op);
                return 0;
            }
        }
    }
}