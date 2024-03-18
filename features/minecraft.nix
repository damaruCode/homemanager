{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # minecraft create
    prismlauncher
    jdk17
  ];
}
