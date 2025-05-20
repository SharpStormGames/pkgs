{ pkgs, ... }:

pkgs.python3.pkgs.buildPythonPackage rec {
   pname = "rpi-lgpio";
   version = "0.6";
   src = pkgs.fetchPypi {
     inherit version;
     pname = "rpi_lgpio";
     hash = "sha256-hFebEdVDu4q93cHhD81r3CgZ5Yl75y1pSaKwRNcftz4=";
   };
   build-system = [ pkgs.python3.pkgs.setuptools ];
   dependencies = [(import ./lgpio.nix { inherit pkgs; })];
 }
