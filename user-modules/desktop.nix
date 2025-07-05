{ ... }:

{
  programs.firefox = {
    enable = true;
    profiles."janik" = {
      isDefault = true;
      settings = {
        "widget.use-xdg-desktop-portal.file-picker" = 1; # Use the KDE file picker: https://nixos.wiki/wiki/Firefox#Use_KDE_file_picker
      };
    };
  };

  programs.thunderbird = {
    enable = true;
    profiles."janik" = {
      isDefault = true;
    };
  };

  programs.keepassxc = {
    enable = true;
    settings = {
      # https://github.com/keepassxreboot/keepassxc/blob/develop/src/core/Config.cpp
      General.MinimizeAfterUnlock = true;

      Browser = {
        Enabled = true;
        UpdateBinaryPath = false;
      };

      GUI = {
        ApplicationTheme = "dark";
        LaunchAtStartup = true;
        ShowTrayIcon = true;
        MinimizeToTray = true;
        MinimizeOnClose = true;
      };
    };
  };
}
