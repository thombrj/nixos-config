{ inputs, pkgs, desktop, system, ... }:
{
  imports = [
    (./. + "/${desktop}")
  ];

  programs = {
    firefox.enable = true;
  };
  
  home.packages = with pkgs; [
    catppuccin-gtk
    google-chrome
    discord
    spotify
    inputs.zen-browser.packages."${system}".default
    aseprite
  ];
  
  fonts.fontconfig.enable = true;
}
