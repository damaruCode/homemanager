{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (lutris.override {
      extraLibraries =  pkgs: [
        wine
        wine64
      ];
    })
  ];
}
