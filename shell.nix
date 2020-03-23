{ pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  name = "programmingclubenv";
  buildInputs = with pkgs; [
     jekyll
  ];
}
