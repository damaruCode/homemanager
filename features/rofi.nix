{ pkgs, config, ... }:
{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
    font = "CaskaydiaCoveNerdFont 18";
    location = "bottom-left";
  };
}
