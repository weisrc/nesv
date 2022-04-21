shopt -s globstar

format () {
  ./tools/verible-verilog-format --inplace **/*.sv
}

make:cpu() {
  make -C src/cpu
}

clean:cpu() {
  rm -rf src/cpu/obj_dir
}

bundle:cpu() {
  make -C src/cpu bundle
}