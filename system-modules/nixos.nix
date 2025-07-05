{ self, ... }:

{
  system.autoUpgrade = {
    enable = true;
    flake = self.outPath;
    flags = [ "--update-input" "nixpkgs" ];
    allowReboot = false;
    dates = "daily";
  };

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  nix.settings.experimental-features = [ "nix-command flakes" "flakes" ];

  nixpkgs.config.allowUnfree = true;
}
