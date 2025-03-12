{
  config,
  pkgs,
  lib,
  ...
}:
{
  options = {
    fonts.enable = lib.mkEnableOption "enables fonts";
  };

  config = lib.mkIf config.fonts.enable {
    fonts = {
      fontconfig.enable = true;
    };
    home.packages = [
      (pkgs.nerdfonts.override { fonts = [ "CascadiaCode" ]; })
    ];
  };
}
