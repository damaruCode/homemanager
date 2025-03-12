{
  config,
  lib,
  ...
}:
{
  options = {
    hyprpaper.enable = lib.mkEnableOption "enables hyprpaper";
  };

  config = lib.mkIf config.hyprpaper.enable {
    services.hyprpaper = {
      enable = true;
      settings = {
        ipc = "off";
        preload = [
          "~/.config/hypr/hyprpaper/wallpaper.jpg"
        ];
        wallpaper = [
          "eDP-1,~/.config/hypr/hyprpaper/wallpaper.jpg"
          "HDMI-A-1,~/.config/hypr/hyprpaper/wallpaper.jpg"
          "DP-1,~/.config/hypr/hyprpaper/wallpaper.jpg"
        ];
      };
    };

    home.file.".config/hypr/hyprpaper/wallpaper.jpg".source = ./hyprpaper/wallpaper.jpg;
  };
}
