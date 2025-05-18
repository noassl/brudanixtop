{ config, pkgs, ... }:

{
  home.username = "janik";
  home.homeDirectory = "/home/janik";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

}
