{ config, pkgs, plasma-manager, ... }:

{
  home-manager = {
    users.janik = {
      imports = [
        ../home-manager/home.nix
        ../plasma-manager/plasma.nix
        ../user-modules/default.nix
      ];
    };
    sharedModules = [ plasma-manager.homeManagerModules.plasma-manager ];
  };
}
