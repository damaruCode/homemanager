{ pkgs, config, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    enableNvidiaPatches = true;
    extraConfig = ''
      ${builtins.readFile ./hypr/hyprland.conf}
    '';
  };
}
