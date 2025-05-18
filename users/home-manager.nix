{ config, pkgs, plasma-manager, ... }:

{
  home-manager = {
    users.janik = {
      imports = [
        ../home-manager/home.nix
        ../plasma-manager/plasma.nix
      ];
    };
    sharedModules = [ plasma-manager.homeManagerModules.plasma-manager ];
  };
}
