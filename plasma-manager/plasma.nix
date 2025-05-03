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
      # config-file: ~/.config/kglobalshortcutsrc
      kwin = {
        "Window Maximize" = "Meta+Up";
        "Window Close" = "Ctrl+Shift+C";
        "Overview" = "Meta";
        "Switch One Desktop to the Right" = "Ctrl+Alt+Right";
        "Switch One Desktop to the Left" = "Ctrl+Alt+Left";
      };

      "services/thunderbird" = {
        "_launch" = "Meta+M";
      };

      "services/systemsettings.desktop" = {
        "_launch" = "Meta+I";
      };

      "services/obsidian.desktop" = {
        "_launch" = "Meta+O";
      };

      "services/firefox" = {
        "_launch" = "Meta+B";
      };

      "powerdevil" = {
        "powerProfile" = "";
      };
    };

    session.sessionRestore.restoreOpenApplicationsOnLogin = "startWithEmptySession";
  };

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
}
