{ config, pkgs, ... }:

{
  home-manager.users.janik = {
    imports = [ ../home-manager/home.nix ];
  };
}
