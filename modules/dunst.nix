{
  lib,
  config,
  ...
}:
{
  options = {
    dunst.enable = lib.mkEnableOption "enables dunst";
  };

  config = lib.mkIf config.dunst.enable {
    services.dunst = {
      enable = true;
    };
  };
}
