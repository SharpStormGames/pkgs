{
  description = "Flake to create packages for my dotfiles";

  inputs = { 
   nixpkgs = { url = "github:nixos/nixpkgs?ref=nixos-unstable"; };
  };
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
   # Alpine Client Tarball
   packages.x86_64-linux.alpine-client = 
    with import nixpkgs { system = "x86_64-linux"; };
    stdenv.mkDerivation {
     name = "alpine-client-1.6.0";
     version = "1.6.0";
     nativeBuildInputs = [ rpmextract ];
     src = pkgs.fetchurl {
      url = "https://api.alpineclientprod.com/uploads/alpine_client_1_6_0_94_x86_64_3256716d3d.rpm";
      sha256 = "sha256-+F7pAGkuHvYoNwVktKUjy5EUWUv5HTaDrlkQpU/oOT4=";
     };
     dontPatch = true;
     dontConfigure = true;
     dontBuild = true;
     unpackPhase = ''
      rpmextract $src
     '';
     installPhase = ''
      cp usr/ $out/ -r
     '';
    };
   };
}
