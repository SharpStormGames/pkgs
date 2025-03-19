{ pkgs, ... }:

pkgs.writers.writePython3Bin "krisp-patcher" {
  libraries = with pkgs.python3Packages; [ capstone pyelftools ];
  flakeIgnore = [ "E501" "F403" "F405" ];
}
(
  builtins.readFile (pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/sersorrel/sys/afc85e6b249e5cd86a7bcf001b544019091b928c/hm/discord/krisp-patcher.py";
    sha256 = "sha256-h8Jjd9ZQBjtO3xbnYuxUsDctGEMFUB5hzR/QOQ71j/E=";
  })
)
