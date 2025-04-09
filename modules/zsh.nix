{
  config,
  lib,
  ...
}:
{
  options = {
    zsh.enable = lib.mkEnableOption "enables zsh";
  };

  config = lib.mkIf config.zsh.enable {
    programs.zsh = {
      enable = true;
      initExtra = ''
        # Function to switch and save the current path
        function cd() {
          builtin cd "$@";
          echo "$PWD" > ~/.cwd;
        }
        export cd
        alias cwd='cd "$(cat ~/.cwd)"'
        cwd
      '';
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
        ];
        theme = "nebirhos";
      };
      shellAliases = {

        # Nix
        uos = "nh os switch ~/.config/nixos";
        uhm = "nh home switch ~/.config/homemanager";
        nfu = "nix flake update";
        nr = "nix run";
        nb = "nom build";
        nd = "nom develop";
        ns = "nom shell";
        ndiff = "nvd diff /nix/var/nix/profiles/system-{$1,$2}-link"; # todo
        nc = "nh clean all --keep 3";

        # System
        c = "clear";
        o = "xdg-open";
        n = "nvim";

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
  };
}
