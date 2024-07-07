{
 description = "Flake to create packages for my dotfiles";
 inputs = { nixpkgs = { url = "github:nixos/nixpkgs?ref=nixos-unstable"; }; };
 outputs = { self, nixpkgs }: {    
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
  };
 };
}