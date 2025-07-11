{ config, pkgs, plasma-manager, ... }:

{
  home-manager = {
    backupFileExtension = "bkup";

    users.janik = {
      imports = [
        ../plasma-manager/plasma.nix
        ../user-modules/default.nix
      ];

      # This value determines the Home Manager release that your configuration is
      # compatible with. This helps avoid breakage when a new Home Manager release
      # introduces backwards incompatible changes.
      #
      # You should not change this value, even if you update Home Manager. If you do
      # want to update the value, then make sure to first check the Home Manager
      # release notes.
      home.stateVersion = "24.11";
    };

    useGlobalPkgs = true;
    useUserPackages = true;

    sharedModules = [ plasma-manager.homeManagerModules.plasma-manager ];
  };
}
