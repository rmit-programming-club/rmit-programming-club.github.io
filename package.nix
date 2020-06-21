{ stdenv, bundlerEnv, ruby }:
let
  # the magic which will include gemset.nix
  gems = bundlerEnv {
    name = "beef-env";
    inherit ruby;
    gemdir  = ./.;
  };
in stdenv.mkDerivation {
  name = "jekyllpage";
  src = ./.;
  buildInputs = [gems ruby];
  installPhase = ''
    mkdir -p $out/{bin,share/beef}
    cp -r * $out/share/beef
    bin=$out/bin/beef
# we are using bundle exec to start in the bundled environment
    cat > $bin <<EOF
#!/bin/sh -e
exec ${gems}/bin/bundle exec ${ruby}/bin/ruby $i "\$@"
EOF
    chmod +x $bin
  '';
}
