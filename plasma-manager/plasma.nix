{ pkgs, ... }:

{
  programs.plasma = {
    enable = true;

    krunner = {
      shortcuts = {
        launch = "Meta+Space";
      };
    };

    kwin = {
      titlebarButtons.left = [ "more-window-actions" "keep-above-windows" ];
    };

    shortcuts = {
      kwin = {
        "Window Maximize" = "Meta+Up";
        "Window Close" = "Ctrl+Shift+C";
      };
    };

    hotkeys.commands = {
      "Browser" = {
        command = "firefox";
        key = "Super+B";
      };
      "Obsidian" = {
        command = "obsidian";
        key = "Super+O";
      };
      "Thunderbird" = {
        command = "thunderbird";
        key = "Super+M";
      };
    };

    session.sessionRestore.restoreOpenApplicationsOnLogin = "startWithEmptySession";
  };
}
