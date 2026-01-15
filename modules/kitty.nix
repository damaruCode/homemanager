{
  config,
  pkgs,
  lib,
  ...
}:
{
  options = {
    kitty.enable = lib.mkEnableOption "enables kitty";
  };

  config = lib.mkIf config.kitty.enable {
    programs.kitty = {
      enable = true;
      font = {
        name = "CaskaydiaCove";
        package = pkgs.nerd-fonts.caskaydia-cove;
        size = 18;
      };
      themeFile = "tokyo_night_storm";
      keybindings = {
        "ctrl+shift+return" = "new_tab";
        "ctrl+shift+backspace" = "close_tab";
      };
    };
  };
}
