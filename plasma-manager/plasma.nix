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
        "Switch One Desktop to the Left" = "CtrShow Desktop=nonel+Alt+Left";
        "Show Desktop" = "Ctrl+Alt+D";
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

      "services/discord.desktop" = {
        "_launch" = "Meta+D";
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
          horizontal = 1545;
          vertical = 1070;
        };
        size = {
          height = 100;
          width = 325;
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

    workspace.wallpaper = "${pkgs.kdePackages.plasma-workspace-wallpapers}/share/wallpapers/DarkestHour/contents/images/1920x1200.jpg";
  };
}
