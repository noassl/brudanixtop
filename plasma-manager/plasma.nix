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
        "Maximize Window" = "Meta+Up";
        "Close Window" = "Ctrl+Shift+C";
      };
    };
  };
}
