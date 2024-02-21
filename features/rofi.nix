{ pkgs, config, ... }:
{
  programs.rofi = {
    enable = true;
    font = "CaskaydiaCoveNerdFont 18";
    location = "bottom-left";
    theme = "custom-theme.rasi";
  };
      
  home.file.".config/rofi/custom-theme.rasi".source = ./rofi/custom-theme.rasi;
}
