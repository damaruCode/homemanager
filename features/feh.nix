{ pkgs, ... }:
{
  programs.feh = {
    enable = true;
  };

  xdg.desktopEntries = {
    "feh.desktop" = {
      name = "feh";
      genericName = "Image viewer";
      comment = "Image viewer";
      exec = "${pkgs.feh}/bin/feh";
      icon = "${pkgs.feh}/share/pixmaps/feh.png";
      categories = [ "Graphics" ];
    };
  };

  xdg.mimeApps = {
    associations.added = {
      "image/jpeg" = [ "feh.desktop" ];
      "image/png" = [ "feh.desktop" ];
      "image/bmp" = [ "feh.desktop" ];
    };
    defaultApplications = {
      "image/jpeg" = [ "feh.desktop" ];
      "image/png" = [ "feh.desktop" ];
      "image/bmp" = [ "feh.desktop" ];
    };
  };
}
