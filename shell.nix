{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    buildInputs = with pkgs;
    [
      verilator
      bash
      emscripten
      cc65
    ];
    shellHook = ''
    cd ${builtins.toString ./.}
    . ./shell.sh
    '';
}