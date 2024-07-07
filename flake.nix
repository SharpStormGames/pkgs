{
 description = "Flake to create packages for my dotfiles";
 inputs = { nixpkgs = { url = "github:nixos/nixpkgs?ref=nixos-unstable"; }; };
 outputs = { self, nixpkgs }: 
  let
   pkgs = import nixpkgs { system = "x86_64-linux"; };
   # Alpine Client Launcher Bootstrapper SRC
   pinnacle =
    with import nixpkgs { system = "x86_64-linux"; };
    stdenv.mkDerivation {
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
  in {    
  packages.x86_64-linux = {
   # Firefox Theme
   ff-theme = 
    with import nixpkgs { system = "x86_64-linux"; };
    stdenv.mkDerivation {
     name = "ff-theme";
     src = ./ff-theme;
     installPhase = "mkdir -p $out; cp -r $src/* $out";
    };
   # GNU GRUB Theme
   grub-theme = 
    with import nixpkgs { system = "x86_64-linux"; };
    stdenv.mkDerivation {
     name = "grub-theme";
     src = ./grub-theme;
     installPhase = "mkdir -p $out; cp -r $src/* $out";
    };
   # Alpine Client Launcher
    alpine-client = pkgs.buildFHSEnv {
     name = "alpine-client";
     targetPkgs = pkgs: [ 
      pinnacle 
      pkgs.libGL 
      pkgs.xorg.libX11 
      pkgs.xorg.libXext 
      pkgs.xorg.libXrender 
      pkgs.xorg.libXtst
      pkgs.libgcc 
      pkgs.libz 
      pkgs.stdenv.cc.cc.lib 
     ];
     runScript = "pinnacle";
    };
  };
 };
}