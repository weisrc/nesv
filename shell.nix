{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    buildInputs = with pkgs;
    [
      verilator
      bash
      emscripten
      clang
    ];
    shellHook = ''
    cd ${builtins.toString ./.}
    . ./shell.sh
    '';
}