{ pkgs, ... }:
let
  version = "${builtins.readFile ./date}";
  sha = "${builtins.readFile ./sha256}";
  rpath = pkgs.lib.makeLibraryPath [
    pkgs.alsa-lib
    pkgs.atk
    pkgs.at-spi2-atk
    pkgs.at-spi2-core
    pkgs.cairo
    pkgs.cups
    pkgs.curl
    pkgs.dbus
    pkgs.expat
    pkgs.fontconfig
    pkgs.freetype
    pkgs.glib
    pkgs.glibc
    pkgs.libdrm
    pkgs.libgbm
    pkgs.libsecret
    pkgs.libuuid
    pkgs.mesa
    pkgs.sqlcipher
    pkgs.gnome2.GConf
    pkgs.gdk-pixbuf
    pkgs.gtk3
    pkgs.libappindicator-gtk3
    pkgs.gnome-keyring
    pkgs.libnotify
    pkgs.libGL
    pkgs.libpulseaudio
    pkgs.nspr
    pkgs.nss
    pkgs.pango
    pkgs.stdenv.cc.cc
    pkgs.systemd
    pkgs.libv4l
    pkgs.xdg-utils
    pkgs.libxkbcommon
    pkgs.xorg.libxkbfile
    pkgs.xorg.libX11
    pkgs.xorg.libXcomposite
    pkgs.xorg.libXcursor
    pkgs.xorg.libXdamage
    pkgs.xorg.libXext
    pkgs.xorg.libXfixes
    pkgs.xorg.libXi
    pkgs.xorg.libXrandr
    pkgs.xorg.libXrender
    pkgs.xorg.libXtst
    pkgs.xorg.libXScrnSaver
    pkgs.xorg.libxcb
    ] + ":${pkgs.stdenv.cc.cc.lib}/lib64";

  unwrapped = pkgs.stdenv.mkDerivation {
    name = "element-nightly-unwrapped";
    version = "${version}";
    src = pkgs.fetchurl {
      url = "https://packages.element.io/debian/pool/main/e/element-nightly/element-nightly_${version}_amd64.deb";
      sha256 = "${sha}";
    };

    buildInputs = [ pkgs.dpkg ];
    dontUnpack = true;

    nativeBuildInputs = with pkgs; [
      wrapGAppsHook
      glib
      xdg-utils
    ];

    installPhase = ''
      mkdir -p $out
      dpkg -x $src $out
      cp -av $out/usr/* $out
      rm -rf $out/usr
      mkdir -p $out/bin
      ln -s $out/opt/Element-Nightly/element-desktop-nightly $out/bin/element-desktop-nightly
    '';

    postFixup = ''
      for file in $(find $out -type f \( -perm /0111 -o -name \*.so\* -or -name \*.node\* \) ); do
        patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" "$file" || true
        patchelf --set-rpath ${rpath}:$out/opt/Element-Nightly $file || true
      done

      substituteInPlace $out/share/applications/element-desktop-nightly.desktop \
      --replace /opt $out/opt
    '';

  };

in pkgs.symlinkJoin {
    name = "element-desktop-nightly";
    paths = [ unwrapped ];
    buildInputs = [ pkgs.makeWrapper ];
    postBuild = ''
        # Fix for wayland and LTS nixpkgs
        wrapProgram $out/bin/element-desktop-nightly --add-flags --ozone-platform=wayland \
            --add-flags --enable-features=UseOzonePlatform,WebRTCPipeWireCapturer
    '';
}
