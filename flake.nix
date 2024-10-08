{
  inputs = { nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"; };
  outputs = { self, nixpkgs }: let pkgs = import nixpkgs { system = "x86_64-linux"; }; in {    
    packages.x86_64-linux = {
      alpine-client = import ./alpine-client/package.nix { inherit self pkgs; };
      alpine-icon = import ./alpine-client/icon.nix { inherit self pkgs; };
      element-desktop-nightly = import ./element-nightly/package.nix { inherit self pkgs; };
      # TODO: Move to themes repo
      grub-theme = pkgs.stdenv.mkDerivation {
        name = "grub-theme";
        src = ./grub-theme;
        installPhase = "mkdir -p $out; cp -r $src/* $out";
      };
    };
  };
}
