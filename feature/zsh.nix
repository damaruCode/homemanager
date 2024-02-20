{ pkgs, config, ... }:
{
  programs.zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "nebirhos";
    };
    shellAliases = {
      # Nix 
      uos = "sudo nixos-rebuild switch --flake .";
      uhm = "home-manager switch --flake .";

      # System  
      ll = "ls -lah";
      c = "clear";

      # Editor
      n = "nvim";

      # Applications
      z = "zathura";
    
      # Git 
      gs = "git status";
      ga = "git add";
      gA = "git add -A";
      gc = "git commit";
      gcm = "git commit -m";
      gpu = "git push";
      gpl = "git pull";
    };
  };
}
