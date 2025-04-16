{ inputs, pkgs, ... }:
pkgs.rustPlatform.buildRustPackage {
  pname = "hyprland-preview-share-picker";
  version = "0.2.0";
  src = inputs.hyprland-preview-share-picker;
  cargoLock.lockFile = inputs.hyprland-preview-share-picker + /Cargo.lock;
  nativeBuildInputs = [pkgs.pkg-config];
  buildInputs = with pkgs; [
    gdk-pixbuf
    gobject-introspection
    graphene
    gtk4
    gtk4-layer-shell
    hyprland-protocols
    pango
  ];
  preBuild = ''
    cp -r ${pkgs.hyprland-protocols}/share/hyprland-protocols/protocols lib/hyprland-protocols/
  '';
}
