{ pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    enableNvidiaPatches = true;
    extraConfig = ''
      ${builtins.readFile ./hypr/hyprland.conf}
    '';
  };

  home.packages = with pkgs; [
    swaylock-effects
    hyprpaper
  ];

  home.file.".config/hypr/hyprpaper.conf".source = ./hypr/hyprpaper.conf;
  home.file.".config/hypr/hyprpaper/wallpaper.jpg".source = ./hypr/hyprpaper/wallpaper.jpg;
  home.file.".config/hypr/swaylock/swaylock-script.sh".source = ./hypr/swaylock/swaylock-script.sh;
}
