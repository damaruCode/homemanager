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
      uos = "sudo nixos-rebuild switch --flake ~/.config/nixos";
      uhm = "home-manager switch --flake ~/.config/home-manager";
      ns = "nix-shell";
      ne = "nix-env";
      nv = "nix run ~/.config/nix-vim";

      # System  
      o = "xdg-open";
      c = "clear";
      t = "tree";

      # Editor
      n = "nvim";

      # Applications
      z = "zathura";
      f = "feh";
    
      # Git 
      gs = "git status";
      ga = "git add";
      gA = "git add -A";
      gc = "git commit";
      gcm = "git commit -m";
      gf = "git fetch";
      gp = "git push";
      gpl = "git pull";
      gco = "git checkout";
      gb = "git branch";
    };
  };
}
