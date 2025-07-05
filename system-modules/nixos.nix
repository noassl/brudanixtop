{ self, ... }:

{
  system.autoUpgrade = {
    enable = true;
    flake = self.outPath;
    flags = [ "--update-input" "nixpkgs" ];
    allowReboot = false;
    dates = "daily";
  };
}
