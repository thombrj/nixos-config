{ pkgs, ... }:
{
  home.packages = with pkgs; [

    dotnetCorePackages.dotnet_8.sdk

    gnumake
    gcc

    nodejs

    SDL2
  ];
}
