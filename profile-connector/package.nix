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
  useFetchCargoVendor = true;
  cargoHash = "sha256-Bp3UxuFQFvh/htV4sVcgOKe0w1+Ed6Iz6c9l9PWrW5E=";
  postInstall = ''
  mkdir -p $out/lib/mozilla/native-messaging-hosts
  sed -i s#/usr/bin/ff-pswitch-connector#$out/bin/firefox_profile_switcher_connector# manifest/manifest-linux.json
  cp manifest/manifest-linux.json $out/lib/mozilla/native-messaging-hosts/ax.nd.profile_switcher_ff.json
  '';
}
