{ pkgs, config, ... }:
{
  programs.rofi = {
    enable = true;
    font = "CaskaydiaCoveNerdFont 18";
    location = "bottom-left";
  };
}
