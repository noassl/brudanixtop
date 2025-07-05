{ pkgs, ... }:

{
  home.packages = with pkgs; [
    wget
    neofetch
  ];

  programs.konsole = {
    enable = true;
    profiles = {
      "janik" = {
        colorScheme = "Manjaro-Cyan-Konsole";
        font = {
          name = "Jetbrains Mono";
          size = 11;
        };
      };
    };
    defaultProfile = "janik";
  };

  programs.vim = {
    enable = true;
    defaultEditor = true;
  };

  programs.ranger.enable = true;
}
