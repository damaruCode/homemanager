{ pkgs, config, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    enableNvidiaPatches = true;
    extraConfig = ''
      ${builtins.readFile ./hypr/hyprland.conf}
    '';
  };

  packages = with pkgs; [
    swaylock-effects
    hyprpaper
  ];

  home.file.".config/hypr/hyprpaper.conf".source = ./hypr/hyprpaper.conf;
  home.file.".config/hypr/wallpaper.jpg".source = ./hypr/wallpaper.jpg;
  home.file.".config/hypr/swaylock/swaylock-script.sh".source = ./hypr/swaylock/swaylock-script.sh;
}
