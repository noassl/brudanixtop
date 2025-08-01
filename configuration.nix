{ pkgs, ... }:

{
  imports = [
    ./hosts/hardware-configuration.nix
    ./system-modules/default.nix
    ./users/home-manager.nix
    ./users/janik.nix
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    usbutils
    kdePackages.partitionmanager
    kdePackages.plasma-browser-integration
    obsidian
    home-manager
    kdePackages.skanpage
    libreoffice-qt6-fresh
#     winbox4
  ];

  # Für Winbox: https://discourse.nixos.org/t/cant-scan-mikrotik-router-on-winbox-in-nixos-but-it-success-detect-connect-from-windows-10-vm/49926
#   networking.firewall = {
#     allowedTCPPorts = [ 80 443 ];
#     allowedUDPPortRanges = [
#       {
#         from = 40000;
#         to = 50000;
#       }
#     ];
#   };

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "24.11"; # Did you read the comment?
}

