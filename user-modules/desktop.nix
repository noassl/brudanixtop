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
}
