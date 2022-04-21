VL := verilator #sh ../../verilator.sh

test: obj_dir/Vcpu
	./obj_dir/Vcpu

obj_dir/Vcpu: obj_dir
	make -C obj_dir -f Vcpu.mk

obj_dir:
	$(VL) -Wno-IGNOREDRETURN --cc cpu.sv --exe main.cc -O3 --relative-includes

bundle:
	$(VL) -Wno-IGNOREDRETURN -E -P --relative-includes cpu.sv >> obj_dir/cpu.sv

.PHONY: obj_dir