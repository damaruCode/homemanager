{
  config,
  pkgs,
  lib,
  ...
}:
{
  options = {
    eduroam.enable = lib.mkEnableOption "enables python3 and dbus-python for executing the eduroam script from the university of constanz";
  };

  config = lib.mkIf config.eduroam.enable {
    home.packages = [
      (pkgs.python3.withPackages (ps: with ps; [ dbus-python ]))
    ];
  };
}
