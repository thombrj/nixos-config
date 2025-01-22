{ pkgs, desktop, ... }:
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
  ];
  
  fonts.fontconfig.enable = true;
}
