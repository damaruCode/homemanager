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
      uos = "nh os switch ~/.config/nixos";
      uhm = "nh home switch ~/.config/home-manager";
      nb = "nom build";
      ndev = "nom develop";
      ns = "nom shell";
      ndiff = "nvd diff /nix/var/nix/profiles/system-{$1,$2}-link"; # todo
      nc = "nh clean all --keep 3";
      ne = "nix-env";
      nv = "nix run ~/.config/nix-vim";

      # System  
      o = "xdg-open";
      n = "nvim";
      c = "clear";

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
