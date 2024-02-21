{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    xdg-utils
  ];

  xdg.mimeApps = {
    enable = true;
    associations.added = {
      "application/pdf" = [ "org.pwmt.zathura.desktop" ];
      "image/jpeg" = [ "feh.desktop" ];
      "image/png" = [ "feh.desktop" ];
      "image/bmp" = [ "feh.desktop" ];
    };
    defaultApplications = {
      "application/pdf" = [ "org.pwmt.zathura.desktop" ];
      "image/jpeg" = [ "feh.desktop" ];
      "image/png" = [ "feh.desktop" ];
      "image/bmp" = [ "feh.desktop" ];
    };
  };
}
