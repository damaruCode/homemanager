{
  description = "damarus Home-Manager flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:damaruCode/nixvim";
    };
  };

  outputs = { nixpkgs, home-manager, nixvim, ... }@inputs: {
    homeConfigurations = {
      "damaru" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs { system = "x86_64-linux"; };
        extraSpecialArgs = { inherit inputs; };
        modules = [
          ./home.nix
          ./modules
        ];
      };
    };
  };
}
