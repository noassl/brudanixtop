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

    panels = [
      {
        location = "top";
        height = 27;
        widgets = [
          "org.kde.plasma.kickoff"
          "org.kde.plasma.appmenu"
          "org.kde.plasma.panelspacer"
          {
            digitalClock = {
              date.enable = false;
            };
          }
          "org.kde.plasma.panelspacer"
          {
            systemTray = {
              items = {
                configs = {
                  battery.showPercentage = true;
                };
              };
            };
          }
        ];
      }
    ];

    desktop.widgets = [
      {
        name = "org.kde.plasma.lock_logout";
        position = {
          horizontal = 1495;
          vertical = 1070;
        };
        size = {
          height = 100;
          width = 375;
        };
        config = {
          # /nix/store/*/share/plasma/plasmoids/org.kde.plasma.lock_logout/contents/config
          General = {
            "show_requestLogout" = false;
            "show_lockScreen" = true;
            "show_requestShutDown" = true;
            "show_requestReboot" = true;
            "show_requestLogoutScreen" = true;
            "show_suspendToDisk" = true;
          };
        };
      }
    ];
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
