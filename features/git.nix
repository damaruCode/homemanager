{ pkgs, config, ... }:
{
  programs.git = {
    enable = true;
    userName = "David Rumscheid";
    userEmail = "david.rumscheid@googlemail.com";
  };
}
