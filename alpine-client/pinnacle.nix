{ pkgs, ... }: let version = "1.8.3"; in
pkgs.stdenv.mkDerivation {
  pname = "pinnacle";
  version = "${version}";
  dontUnpack = true;
  dontBuild = true;
  dontConfigure = true;
  src = pkgs.fetchurl {
    url = "https://github.com/alpine-client/pinnacle/releases/download/${version}/pinnacle-linux-amd64";
    sha256 = "sha256-aqJAMBcnctV4yVc8HwgAJrtW7gNGtxIvjsdtE8ObnK4=";
  };
  installPhase = ''
    mkdir -p $out/bin
    cp $src $out/pinnacle
    install -m755 -D $out/pinnacle $out/bin/
  '';
}
