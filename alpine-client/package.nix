{ pkgs, ... }: let
  pinnacle = import ./pinnacle.nix { inherit pkgs; };
in  
  pkgs.buildFHSEnv {
    name = "alpine-client";
    targetPkgs = pkgs: with pkgs; [ 
      pinnacle
      alsa-lib
      libGL 
      xorg.libX11 
      xorg.libXcursor
      xorg.libXext 
      xorg.libXrender 
      xorg.libXtst
      xorg.libXi
      xorg.libXrandr
      xorg.libXxf86vm
      libgcc 
      libz 
      stdenv.cc.cc.lib
      fontconfig
    ];
    runScript = "pinnacle";
  }

