{ pkgs, lib, config, ... }:
{
  options = {
      rofi.enable = lib.mkEnableOption "enables rofi";
  };

  config = lib.mkIf config.rofi.enable {
    programs.rofi = {
      enable = true;
      theme = "custom-theme.rasi";
      package = pkgs.rofi-wayland;
    };
      
    home.file.".config/rofi/custom-theme.rasi".source = ./rofi/custom-theme.rasi;
  };
}
