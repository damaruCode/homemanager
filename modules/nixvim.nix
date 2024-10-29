{ inputs, lib, config, ... }:
{
  options = {
      nixvim.enable = lib.mkEnableOption "enables nixvim";
  };

  config = lib.mkIf config.nixvim.enable {
    home.packages = [
      inputs.nixvim.packages.x86_64-linux.default
    ];
  };
}
