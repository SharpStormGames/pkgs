{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixpkgs-unstable";
    nurpkgs.url = "github:nix-community/NUR";
    firefox.url = "github:nix-community/nur-combined?dir=repos/rycee/pkgs/firefox-addons/";
  };

  outputs = { self, nixpkgs, ... }@inputs: let
    pkgs = import nixpkgs { system = "x86_64-linux"; overlays = [ inputs.nurpkgs.overlays.default ]; };
    buildFirefoxXpiAddon = inputs.firefox.lib.x86_64-linux.buildFirefoxXpiAddon;
    fetchurl = pkgs.fetchurl; stdenv = pkgs.stdenv; lib = inputs.nixpkgs.lib;
  in {
    packages.x86_64-linux = {
      element-desktop-nightly = import ./element-nightly { inherit self pkgs; };
      ff-extensions = import ./ff-extensions { inherit buildFirefoxXpiAddon lib fetchurl stdenv; };
      krisp-patcher = import ./krisp-patcher { inherit self pkgs; };
      profile-connector = import ./profile-connector { inherit self pkgs; };

      # TODO: Move to themes repo
      grub-theme = pkgs.stdenv.mkDerivation {
        name = "grub-theme";
        src = ./grub-theme;
        installPhase = "mkdir -p $out; cp -r $src/* $out";
      };
    };
    devShells.x86_64-linux.default = pkgs.mkShell { packages = [ pkgs.nur.repos.rycee.mozilla-addons-to-nix ]; };
  };
}
