{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    buildInputs = with pkgs;
    [
      verilator
      bash
      emscripten
    ];
    shellHook = ''
    cd ${builtins.toString ./.}
    . ./shell.sh
    '';
}