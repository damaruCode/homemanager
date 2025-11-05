{
  config,
  lib,
  ...
}:
{
  options = {
    hypridle.enable = lib.mkEnableOption "enables hypridle";
  };

  config = lib.mkIf config.hypridle.enable {
    services.hypridle = {
      enable = true;
      settings = {
        lock_cmd = ""; # TODO
      };
    };
  };
}
