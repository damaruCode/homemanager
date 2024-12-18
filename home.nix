{ pkgs, ... }:
{
  imports = [
    ./features/kitty.nix # terminal emulator config
    ./features/zsh.nix # shell config
    ./features/waybar.nix # status bar config
    ./features/zathura.nix # pdf reader config
    ./features/feh.nix # img viewer config
    ./features/xdg.nix # defaults programs for file endings
    ./features/fonts.nix # font config
    ./features/eduroam.nix # eduroam config
  ];

  # custom module options
  anki.enable = true;
  dunst.enable = true;
  hyprland.enable = true;
  hyprlock.enable = true;
  hyprpaper.enable = true;
  nixvim.enable = true;
  rofi.enable = true;

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
      htop-vim # task viewer
      pavucontrol # volume control
      wl-clipboard # clipboard for wayland
    ];
  };

  systemd.user.startServices = "sd-switch";
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
