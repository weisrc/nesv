VL := sh ../../verilator.sh

test: obj_dir/Vcpu
	./obj_dir/Vcpu

obj_dir/Vcpu: obj_dir
	make -C obj_dir -f Vcpu.mk

obj_dir:
	sudo systemctl start docker
	$(VL) --version
	$(VL) --cc cpu.sv --exe main.cc -O3 --relative-includes
	ls obj_dir

.PHONY: obj_dir