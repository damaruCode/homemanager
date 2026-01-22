{
  config,
  pkgs,
  lib,
  ...
}:
{
  options = {
    openshot.enable = lib.mkEnableOption "enables openshot";
  };

  config = lib.mkIf config.openshot.enable {
    home.packages = [
      pkgs.openshot-qt
    ];
  };
}
