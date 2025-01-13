{
  config,
  pkgs,
  lib,
  ...
}:
{
  options = {
    mattermost.enable = lib.mkEnableOption "enables mattermost";
  };

  config = lib.mkIf config.mattermost.enable {
    home.packages = [
      pkgs.mattermost
      pkgs.mattermost-desktop
    ];
  };
}
