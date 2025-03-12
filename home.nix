{ pkgs, ... }:
{
  # custom module options
  anki.enable = true;
  dunst.enable = true;
  eduroam.enable = true;
  feh.enable = true;
  fonts.enable = true;
  hyprland.enable = true;
  hyprlock.enable = true;
  hyprpaper.enable = true;
  kitty.enable = true;
  mattermost.enable = true;
  nixvim.enable = true;
  rofi.enable = true;
  waybar.enable = true;
  zathura.enable = true;
  zsh.enable = true;

  nixpkgs.config.allowUnfree = true;

  home = {
    username = "damaru";
    homeDirectory = "/home/damaru";
    packages = with pkgs; [
      # standalone apps
      brave # browser
      slack # communication
      figma-linux # design
      discord # communication
      webcord # discord in browser
      obsidian # note taking
      libreoffice # office suite
      gnuplot # plotting
      inkscape # vector graphics
      gimp # image editing
      krita # digital painting
      vlc # media player
      drawio # diagramming
      mdp # md presenation tool

      # utils
      nh # yet another nix helper
      nvd # nix visualization
      nix-output-monitor # nix visualisation
      xdg-utils # filetype support
      htop-vim # task viewer
      pavucontrol # volume control
      wl-clipboard # clipboard for wayland
    ];
  };

  xdg.mimeApps = {
    enable = true;
  };

  systemd.user.startServices = "sd-switch";
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
