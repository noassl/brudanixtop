{ ... }:

{
  programs.keepassxc = {
    enable = true;
    settings = {
      # https://github.com/keepassxreboot/keepassxc/blob/develop/src/core/Config.cpp
      General.MinimizeAfterUnlock = true;

      Browser = {
        Enabled = true;
        UpdateBinaryPath = false;
        AlwaysAllowAccess = true;
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
