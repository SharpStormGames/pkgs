{ apkgs, ... }:

apkgs.python3.pkgs.buildPythonPackage rec {
   pname = "rpi-lgpio";
   version = "0.6";
   src = apkgs.fetchPypi {
     inherit version;
     pname = "rpi_lgpio";
     hash = "sha256-hFebEdVDu4q93cHhD81r3CgZ5Yl75y1pSaKwRNcftz4=";
   };
   build-system = [ apkgs.python3.pkgs.setuptools ];
   dependencies = [(import ./lgpio.nix { inherit apkgs; })];
 }
