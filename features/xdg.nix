{ pkgs, ... }:
{
  home.packages = with pkgs; [
    xdg-utils
  ];

  xdg.mimeApps = {
    enable = true;
  };
}
