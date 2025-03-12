{
  config,
  lib,
  ...
}:
{
  options = {
    waybar.enable = lib.mkEnableOption "enables waybar";
  };

  config = lib.mkIf config.waybar.enable {
    programs.waybar = {
      enable = true;

      settings = {
        mainBar = {
          layer = "top";
          position = "bottom";

          modules-left = [
            "hyprland/workspaces"
            "custom/left-slope-dark"
          ];
          modules-center =
            [
            ];
          modules-right = [
            "custom/right-slope-dark"
            "clock"
            "custom/right-slope-light"
            "custom/right-slope-dark"
            "network"
            "custom/right-slope-light"
            "custom/right-slope-dark"
            "pulseaudio"
            "custom/right-slope-light"
            "custom/right-slope-dark"
            "memory"
            "custom/right-slope-light"
            "custom/right-slope-dark"
            "cpu"
            "custom/right-slope-light"
            "custom/right-slope-dark"
            "battery"
          ];

          "custom/left-slope-light" = {
            format = "";
            tooltip = false;
          };

          "custom/left-slope-dark" = {
            format = "";
            tooltip = false;
          };

          "custom/right-slope-light" = {
            format = "";
            tooltip = false;
          };

          "custom/right-slope-dark" = {
            format = "";
            tooltip = false;
          };

          "hyprland/workspaces" = {
            disable-scroll = true;
            on-click = "activate";
            all-outputs = true;
            format = " {id} ";
            sort-by = "id";
          };

          "clock" = {
            format = "{:%H:%M}";
          };

          "pulseaudio" = {
            format = "{icon}  {volume:2}%";
            format-bluetooth = "{icon}  {volume}%";
            format-muted = "MUTE";
            format-icons = {
              headphones = "";
              default = [
                ""
              ];
            };
            scroll-step = 5;
            on-click = "pavucontrol";
            on-click-right = "pavucontrol";
          };
          "network" = {
            # interface = "wlp2*"; # (Optional) To force the use of this interface
            format-wifi = "{essid}   {signalStrength}%";
            format-ethernet = "{ipaddr}/{cidr} 󰈀 ";
            format-disconnected = "DISCONNECTED";
            format-alt = "{ifname}: {ipaddr}/{cidr}";
          };
          "memory" = {
            interval = 5;
            format = "RAM {}%";
          };
          "cpu" = {
            interval = 5;
            format = "CPU {}%";
          };
          "battery" = {
            states = {
              good = 95;
              warning = 30;
              critical = 15;
            };
            format = "{icon}  {capacity}%";
            format-icons = [
              ""
              ""
              ""
              ""
              ""
            ];
          };
        };
      };
      style = ''
        * {
        	font-size: 24px;
        	font-family: "CaskaydiaCoveNerdFont", monospace;
          font-weight: bold;
        }

        window#waybar {
        	background: #24283b;
        	color: #fdf6e3;
        }

        #custom-right-slope-dark,
        #custom-left-slope-dark {
        	color: #1f2335;
        }

        #custom-right-slope-light,
        #custom-left-slope-light {
        	color: #24283b;
        	background: #1f2335;
        }

        #workspaces,
        #clock,
        #pulseaudio,
        #network,
        #memory,
        #cpu,
        #battery {
        	background: #1f2335;
        }

        #workspaces button {
        	padding: 0 2px;
        	color: #a9b1d6;
        }

        #workspaces button.active {
        	color: #7dcfff;
        }

        #clock,
        #network,
        #pulseaudio,
        #memory,
        #cpu,
        #battery { 
        	color: #a9b1d6;
        }

        #clock,
        #network,
        #pulseaudio,
        #memory,
        #cpu,
        #battery {
        	padding: 0 10px;
        }
      '';
    };
  };
}
