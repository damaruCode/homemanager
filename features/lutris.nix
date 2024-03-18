{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # install packages
    lutris # game manager
    wine64 # windows compatibility layer
  ];
}
