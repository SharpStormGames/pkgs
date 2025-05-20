{ pkgs, ... }:

pkgs.python3Packages.buildPythonPackage rec {
  pname = "lgpio";
  version = "0.2.2";

  src = pkgs.fetchFromGitHub {
    owner = "joan2937";
    repo = "lg";
    rev = "v${version}";
    hash = "sha256-92lLV+EMuJj4Ul89KIFHkpPxVMr/VvKGEocYSW2tFiE=";
  };

  preConfigure = "cd PY_LGPIO";
  preBuild = "swig -python lgpio.i";
  nativeBuildInputs = [ pkgs.swig ];
  buildInputs = [
    (pkgs.stdenv.mkDerivation {
      inherit pname version src;
      postConfigure = ''
        substituteInPlace Makefile \
          --replace ldconfig 'echo ldconfig'
      '';
      makeFlags = [ "prefix=$(out)" ];
    })
  ];
  makeFlags = [ "prefix=$(out)" ];
}
