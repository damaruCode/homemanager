{
  pkgs,
  config,
  lib,
  ...
}:
{
  options = {
    hyprland.enable = lib.mkEnableOption "enables hyprland";
  };

  config = lib.mkIf config.hyprland.enable {

    home.packages = [
      pkgs.hyprshot
    ];

    wayland.windowManager.hyprland = {
      enable = true;
      settings = {
        monitor = [
          "eDP-1,1920x1080@144,0x0,1"
          "desc:Dell Inc. DELL U2723QE GFCGH34,3840x2160@60,auto,2"
          ",preferred,auto,1,mirror,eDP-1"
        ];

        exec-once = [
          "waybar & hyprpaper"
          "feh ~/Keyboards/miryoku.png"
        ];

        env = [
          "XCURSOR_SIZE,24"
        ];

        input = {
          kb_layout = "us";
          kb_variant = "altgr-intl";
          follow_mouse = 1;
          touchpad = {
            natural_scroll = true;
          };
          sensitivity = 0;
        };

        general = {
          gaps_in = 5;
          gaps_out = 10;
          border_size = 4;
          "col.inactive_border" = "rgba(a9b1d6ff)";
          "col.active_border" = "rgba(7dcfffff)";
          no_focus_fallback = true;
          layout = "master";
        };

        master = {
          mfact = 0.65;
          new_status = "master";
          new_on_top = true;
        };

        decoration = {
          active_opacity = 0.9;
          inactive_opacity = 0.9;
          fullscreen_opacity = 0.9;
          drop_shadow = false;
        };

        animations = {
          enabled = false;
        };

        gestures = {
          workspace_swipe = false;
        };

        misc = {
          disable_hyprland_logo = true;
        };

        "$mainMod" = "SUPER";

        bind = [
          "$mainMod, RETURN, exec, kitty"
          "$mainMod, F, fullscreen, 1"
          "$mainMod SHIFT, F, fullscreen, 0"
          "$mainMod, Q, killactive, "
          "$mainMod, S, exec, hyprlock"
          "$mainMod, H, exit, "
          "$mainMod, D, exec, rofi -show drun"

          "$mainMod, N, movefocus, l"
          "$mainMod, O, movefocus, r"
          "$mainMod, I, movefocus, u"
          "$mainMod, E, movefocus, d"

          "$mainMod, M, layoutmsg, swapwithmaster master"
          "$mainMod, B, layoutmsg, focusmaster master"

          "$mainMod, 1, workspace, 1"
          "$mainMod, 2, workspace, 2"
          "$mainMod, 3, workspace, 3"
          "$mainMod, 4, workspace, 4"
          "$mainMod, 5, workspace, 5"
          "$mainMod, 6, workspace, 6"
          "$mainMod, 7, workspace, 7"
          "$mainMod, 8, workspace, 8"
          "$mainMod, 9, workspace, 9"
          "$mainMod, 0, workspace, 10"

          "$mainMod SHIFT, 1, movetoworkspace, 1"
          "$mainMod SHIFT, 2, movetoworkspace, 2"
          "$mainMod SHIFT, 3, movetoworkspace, 3"
          "$mainMod SHIFT, 4, movetoworkspace, 4"
          "$mainMod SHIFT, 5, movetoworkspace, 5"
          "$mainMod SHIFT, 6, movetoworkspace, 6"
          "$mainMod SHIFT, 7, movetoworkspace, 7"
          "$mainMod SHIFT, 8, movetoworkspace, 8"
          "$mainMod SHIFT, 9, movetoworkspace, 9"
          "$mainMod SHIFT, 0, movetoworkspace, 10"

          # Screenshot a window
          "$mainMod, PRINT, exec, hyprshot -m window"
          # Screenshot a monitor
          ", PRINT, exec, hyprshot -m output"
          # Screenshot a region
          "$mainMod SHIFT, PRINT, exec, hyprshot -m region"
        ];
      };
    };
  };
}
