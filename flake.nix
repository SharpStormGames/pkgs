{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixpkgs-unstable";
    nurpkgs.url = "github:nix-community/NUR";
    firefox.url = "github:nix-community/nur-combined?dir=repos/rycee/pkgs/firefox-addons/";
    hyprland-preview-share-picker = {
      url = "github:whysobad/hyprland-preview-share-picker";
      flake = false;
    };
  };

  nixConfig = {
    substituters = [ "https://cache.nixos.org" "https://hyprland.cachix.org"];
    trusted-public-keys = [ "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=" "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };

  outputs = { self, nixpkgs, ... }@inputs: let
    pkgs = import nixpkgs { system = "x86_64-linux"; overlays = [ inputs.nurpkgs.overlays.default ]; };
    buildFirefoxXpiAddon = inputs.firefox.lib.x86_64-linux.buildFirefoxXpiAddon;
    fetchurl = pkgs.fetchurl; stdenv = pkgs.stdenv; lib = inputs.nixpkgs.lib;
  in {
    packages.x86_64-linux = {
      element-desktop-nightly = import ./element-nightly { inherit self pkgs; };
      ff-extensions = import ./ff-extensions { inherit buildFirefoxXpiAddon lib fetchurl stdenv; };
      hypr-share-picker = import ./hypr-share-picker { inherit self inputs pkgs; };
      krisp-patcher = import ./krisp-patcher { inherit self pkgs; };
      profile-connector = import ./profile-connector { inherit self pkgs; };
    };
    packages.aarch64-linux.rpi-lgpio = import ./lgpio { inherit self lib pkgs; };
    devShells.x86_64-linux.default = pkgs.mkShell { packages = [ pkgs.nur.repos.rycee.mozilla-addons-to-nix ]; };
  };
}
