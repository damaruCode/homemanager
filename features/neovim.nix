{ config, pkgs, ... }:
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

      # theme
      tokyonight-nvim

      # highlight code
      (nvim-treesitter.withPlugins (p: [
        p.tree-sitter-nix
        p.tree-sitter-lua
        p.tree-sitter-rust
        p.tree-sitter-cpp
        p.tree-sitter-c_sharp
        p.tree-sitter-latex
      ]))

      # status bar
      lualine-nvim

      # search for files
      telescope-nvim

      # store and move to files
      harpoon

      # browse undo branches 
      undotree

      # toggle git
      vim-fugitive

      # comment short cuts
      comment-nvim

      # copilot
      copilot-vim

      # note taking 
      # obsidian.vim

      # latex
      vimtex

      # lsp
      lsp-zero-nvim
      nvim-lspconfig
      nvim-cmp
      cmp-nvim-lsp
      luasnip
    ];

    extraPackages = with pkgs; [
      rnix-lsp
      clang-tools
      csharp-ls
      lua-language-server
      rust-analyzer
      texlab
    ];

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };
}
