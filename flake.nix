{
 description = "Flake to create packages for my dotfiles";
 inputs = { nixpkgs = { url = "github:nixos/nixpkgs?ref=nixos-unstable"; }; };
 outputs = { self, nixpkgs }: let pkgs = import nixpkgs { system = "x86_64-linux"; }; in {    
  packages.x86_64-linux = {
   ff-theme = pkgs.stdenv.mkDerivation {
    name = "ff-theme";
    src = ./ff-theme;
    installPhase = "mkdir -p $out; cp -r $src/* $out";
   };
   grub-theme = pkgs.stdenv.mkDerivation {
    name = "grub-theme";
    src = ./grub-theme;
    installPhase = "mkdir -p $out; cp -r $src/* $out";
   };
    alpine-client = 
    let
     pinnacle =
     pkgs.stdenv.mkDerivation {
      pname = "pinnacle";
      version = "1.6.0";
      dontUnpack = true;
      dontBuild = true;
      dontConfigure = true;
      src = pkgs.fetchurl {
       url = "https://github.com/alpine-client/pinnacle/releases/download/1.6.0/pinnacle-linux-amd64";
       sha256 = "sha256-D7yWOHz792jeS8GglY1DsVwKOHGbNHT9jWujofFSEok=";
      };
      installPhase = ''
       mkdir -p $out/bin
       cp $src $out/pinnacle
       install -m755 -D $out/pinnacle $out/bin/
     '';
     };
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
    };
    sddm-theme = pkgs.where-is-my-sddm-theme.override {
     variants = ["qt5"];
     themeConfig.General = { 
      passwordFontSize = 24; 
      passwordCursorColor = "white"; 
     };
    };
  };
 };
}