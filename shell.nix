{ pkgs ? import <nixpkgs> {}}:
let
  gems = with pkgs; bundlerEnv {
    name = "programmingclubenv";
    inherit ruby;
    gemdir  = ./.;
  };

in
pkgs.mkShell {
  name = "programmingclubenv";
  buildInputs = with pkgs; [
     ruby.devEnv
     gems
  ];
}
