{ pkgs, config, ... }:
{
  programs.git = {
    enable = true;
    lfs = true;
    userName = "David Rumscheid";
    userEmail = "david.rumscheid@googlemail.com";
    editor = "nvim";
  };
}
