{
  programs.rofi = {
    enable = true;
    theme = "custom-theme.rasi";
  };
      
  home.file.".config/rofi/custom-theme.rasi".source = ./rofi/custom-theme.rasi;
}
