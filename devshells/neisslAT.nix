{ pkgs ? import <pkgs> { } }:


pkgs.mkShell {
  packages = with pkgs; [
    jetbrains.webstorm
    yarn-berry
    nodejs_20
  ];
};
