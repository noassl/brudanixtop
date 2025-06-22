{ ... }:

{
  # Syncthing
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    user = "janik";
    group = "users";
    dataDir = "/home/janik";
    settings = {
      devices = {
        "nuc" = { id = "B4O2E22-ODHTZSL-4WVSCWE-2CMG3D3-4ODK6YX-TP3DSVB-VGREQ4P-KBADNA4"; };
      };
      folders = {
        "Documents" = {
          id = "e6x6s-a4ym2";
          devices = [ "nuc" ];
          label = "Documents";
          path = "/home/janik/Documents";
        };
        "Kodierung" = {
          id = "dmpqy-vftvh";
          devices = [ "nuc" ];
          label = "Kodierung";
          path = "/home/janik/Kodierung";
        };
      };
    };
  };

  systemd.services.syncthing.environment.STNODEFAULTFOLDER = "true"; # Don't create default ~/Sync folder
}
