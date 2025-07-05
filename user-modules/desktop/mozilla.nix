{ pkgs, ... }:

{
# nixpkgs.overlays = [
  #  (final: prev: {
  #    firefox = prev.firefox.override {
  #      extraPrefs = ''
  #        /* IMPORTANT: First line must be a comment */
  #        var { classes: Cc, interfaces: Ci, utils: Cu } = Components;

  #        /* set new tab page */
  #        try {
  #          ChromeUtils.defineESModuleGetters(this, {
  #            AboutNewTab: "resource:///modules/AboutNewTab.sys.mjs",
  #          });
  #          var newTabUrl = "file:///home/janik/Kodierung/Web/Startpage-v3/index.html";
  #          AboutNewTab.newTabUrl = newTabUrl;
  #        } catch (e) {
  #          Cu.reportError(e); // report in browser console
  #        }
  #      '';
  #    };
  #  })
  # ];

  programs.firefox = {
    enable = true;
    profiles."janik" = {
      isDefault = true;
      search = {
        default = "ddg";
        force = true;
      };
      settings = {
        # about:config
        "widget.use-xdg-desktop-portal.file-picker" = 1; # KDE file picker: https://nixos.wiki/wiki/Firefox#Use_KDE_file_picker
        "sidebar.verticalTabs" = true;
        "sidebar.visibility" = "hide-sidebar";
        "browser.toolbars.bookmarks.visibility" = "never";
        "privacy.bounceTrackingProtection.mode" = 1; # strict
        "browser.contextual-password-manager.enabled" = false; # Passwortmanager deaktivieren (glaub i)
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true; # userChrome.css enablen
      };
      userChrome = ''
        #tabbrowser-tabs { visibility: collapse !important; };
      '';
    };
    package = pkgs.firefox.override {
      cfg.nativeMessagingHosts = [
        pkgs.kdePackages.plasma-browser-integration
      ];
      cfg.extraPrefs = ''
        /* IMPORTANT: First line must be a comment */
        var { classes: Cc, interfaces: Ci, utils: Cu } = Components;

        /* set new tab page */
        try {
          ChromeUtils.defineESModuleGetters(this, {
            AboutNewTab: "resource:///modules/AboutNewTab.sys.mjs",
          });
          var newTabUrl = "file:///home/janik/Kodierung/Web/Startpage-v3/index.html";
          AboutNewTab.newTabUrl = newTabUrl;
        } catch (e) {
          Cu.reportError(e); // report in browser console
        }
      '';
    };
  };

  programs.thunderbird = {
    enable = true;
    profiles."janik" = {
      isDefault = true;
    };
  };
}
