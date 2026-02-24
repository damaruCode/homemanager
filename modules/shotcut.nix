{
  config,
  pkgs,
  lib,
  ...
}:
{
  options = {
    shotcut.enable = lib.mkEnableOption "enables shotcut";
  };

  config = lib.mkIf config.shotcut.enable {
    home.packages = [
      pkgs.shotcut
    ];
  };
}
