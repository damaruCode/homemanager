{
  description = "damarus Home-Manager flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-23.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };
    plugin-vim-razor.url = "github:jlcrochet/vim-razor";
    plugin-vim-razor.flake = false;

    # nix-vim.url = "github:damaruCode/nix-vim";
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: {
    homeConfigurations = {
      "damaru" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs { system = "x86_64-linux"; };
        extraSpecialArgs = { inherit inputs; };
        modules = [
          ./home.nix
        ];
      };
    };
  };
}
