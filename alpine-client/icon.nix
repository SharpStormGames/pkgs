{ pkgs, ... }:
pkgs.stdenv.mkDerivation {
  name = "alpine-icon";
  src = pkgs.fetchurl {
    url = "https://github.com/alpine-client/pinnacle/blob/084fde184a816b2241c36bd4f37a9fced3f21dbf/assets/icon.png?raw=true";
    sha256 = "sha256-heIzTgeTQy3UgA/j/L6jd72Rn+k4wINPRWob1xEGSwA=";
  };
  dontUnpack = true;
  dontPatch = true;
  dontBuild = true;
  installPhase = "mkdir -p $out; cp $src $out/icon.png";
}
