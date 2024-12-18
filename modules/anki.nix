{
  config,
  pkgs,
  lib,
  ...
}:
{
  options = {
    anki.enable = lib.mkEnableOption "enables anki";
  };

  config = lib.mkIf config.anki.enable {
    home.packages = [
      pkgs.anki
    ];
  };
}
