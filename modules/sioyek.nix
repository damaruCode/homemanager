{
  config,
  lib,
  ...
}:
{
  options = {
    sioyek.enable = lib.mkEnableOption "enables sioyek";
  };

  config = lib.mkIf config.sioyek.enable {
    programs.sioyek = {
      enable = true;
    };
  };
}
