test: obj_dir/Vcpu
	./obj_dir/Vcpu

obj_dir/Vcpu: obj_dir
	make -C obj_dir -f Vcpu.mk

obj_dir:
	verilator --version
	verilator --cc cpu.sv --exe main.cc --compiler clang -O3 --relative-includes
	ls obj_dir

.PHONY: obj_dir