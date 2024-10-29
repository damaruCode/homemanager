{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraLuaConfig = ''
      ${builtins.readFile ./nvim/options.lua}
      ${builtins.readFile ./nvim/remaps.lua}
      ${builtins.readFile ./nvim/plugins/tokyonight.lua}
      ${builtins.readFile ./nvim/plugins/treesitter.lua}
      ${builtins.readFile ./nvim/plugins/lualine.lua}
      ${builtins.readFile ./nvim/plugins/telescope.lua}
      ${builtins.readFile ./nvim/plugins/harpoon.lua}
      ${builtins.readFile ./nvim/plugins/undotree.lua}
      ${builtins.readFile ./nvim/plugins/fugitive.lua}
      ${builtins.readFile ./nvim/plugins/comment.lua}
      ${builtins.readFile ./nvim/plugins/lspzero.lua}
    '';

    plugins = with pkgs.vimPlugins; [
      tokyonight-nvim # theme
      lualine-nvim # status bar
      telescope-nvim # fuzzy finder
      harpoon # save and jump to projects
      undotree # save change history
      vim-fugitive # toggle git
      comment-nvim # comment code
      vimtex # latex support
      plenary-nvim # dependency for telescope and obsidian
      Coqtail # coq proof assistant

      # lsp
      lsp-zero-nvim
      nvim-lspconfig
      nvim-cmp
      cmp-nvim-lsp
      luasnip

      nvim-treesitter.withAllGrammars
    ];

    extraPackages = with pkgs; [
      ripgrep
      tree-sitter

      # languages
      lua
      cmake
      gcc
      cargo
      rustc
      texliveFull

      # lsp
      nil # nix
      # rnix-lsp # nix (not working because of dependency unsafe)
      lua-language-server # lua
      clang-tools # c/c++
      rust-analyzer # rust
      texlab # latex

      libllvm
      boost
    ];

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };
}
