{
  config,
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
        name = "CaskaydiaCoveNerdFont";
        size = 18;
      };
      theme = "Tokyo Night Storm";
      keybindings = {
        "ctrl+shift+return" = "new_tab";
        "ctrl+shift+backspace" = "close_tab";
      };
    };
  };
}
