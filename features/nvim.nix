{ config, pkgs, inputs, ... }:
{

  nixpkgs.overlays = [
    (final: prev: {
      vimPlugins = prev.vimPlugins // {
        vim-razor = prev.vimUtils.buildVimPlugin {
          name = "vim-razor";
          src = inputs.plugin-vim-razor;
        };
      };
    })
  ];

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
      copilot-vim # autocomplete ai
      vimtex # latex support
      # obsidian.vim # note taking 

      # lsp
      lsp-zero-nvim
      nvim-lspconfig
      nvim-cmp
      cmp-nvim-lsp
      luasnip

      # highlighter
      (nvim-treesitter.withPlugins (p: [
        p.tree-sitter-nix
        p.tree-sitter-lua
        p.tree-sitter-cpp
        p.tree-sitter-rust
        p.tree-sitter-latex
        p.tree-sitter-c_sharp
      ]))

      vim-razor
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
      rnix-lsp # nix
      lua-language-server # lua
      clang-tools # c/c++
      rust-analyzer # rust
      texlab # latex
      csharp-ls # c#

      # formater
      nixpkgs-fmt # nix
      luaformatter # lua
      rustfmt # rust
    ];

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
  };
}
