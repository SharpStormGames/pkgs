{
  description = "Flake to create packages for my dotfiles";

  inputs = { nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"; };
  outputs = { self, nixpkgs }: {    
    # Firefox Theme
    packages.x86_64-linux.ff-theme = 
    with import nixpkgs { system = "x86_64-linux"; };
    stdenv.mkDerivation {
     name = "ff-theme";
     src = ./ff-theme;
     installPhase = "mkdir -p $out; cp -r $src/* $out";
    };
    # GNU GRUB Theme
    packages.x86_64-linux.grub-theme = 
    with import nixpkgs { system = "x86_64-linux"; };
    stdenv.mkDerivation {
     name = "grub-theme";
     src = ./grub-theme;
     installPhase = "mkdir -p $out; cp -r $src/* $out";
    };
  };
}
