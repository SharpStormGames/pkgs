{ pkgs, ... }:

pkgs.rustPlatform.buildRustPackage rec {
  pname = "firefox-profile-switcher-connector";
  version = "0.1.1";
  src = pkgs.fetchFromGitHub {
    owner = "null-dev";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-mnPpIJ+EQAjfjhrSSNTrvCqGbW0VMy8GHbLj39rR8r4=";
  };
  nativeBuildInputs = [ pkgs.cmake ];
  cargoHash = "sha256-MLz2c82hUYZHvWuEIlqMIYxjAtc1DuK/kmTpcmGpUxc=";
  postInstall = ''
  mkdir -p $out/lib/mozilla/native-messaging-hosts
  sed -i s#/usr/bin/ff-pswitch-connector#$out/bin/firefox_profile_switcher_connector# manifest/manifest-linux.json
  cp manifest/manifest-linux.json $out/lib/mozilla/native-messaging-hosts/ax.nd.profile_switcher_ff.json
  '';
}
