{ config, lib, ... }:
{
  options = {
    hyprlock.enable = lib.mkEnableOption "enables hyprlock";
  };

  config = lib.mkIf config.hyprlock.enable {
    programs.hyprlock = {
      enable = true;
      settings = {
        general = {
          disable_loading_bar = true;
          grace = 3;
          hide_cursor = true;
          no_fade_in = false;
        };

        background = [
          {
            path = "screenshot";
            blur_passes = 3;
            blur_size = 8;
          }
        ];

        input-field = [
          {
            size = "200, 50";
            position = "0, -80";
            monitor = "";
            rounding = 0;
            dots_center = true;
            fade_on_empty = false;
            font_color = "rgb(202, 211, 245)";
            inner_color = "rgb(91, 96, 120)";
            outer_color = "rgba(7dcfffff)";
            outline_thickness = 4;
            placeholder_text = "Password...";
          }
        ];
      };
    };
  };
}
