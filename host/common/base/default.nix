{
  hostname,
  pkgs,
  lib,
  username,
  ...
}:
{
  imports = [
    ./locale.nix
    
    ../services/openssh.nix
    ../services/firewall.nix
  ];

  networking = {
    hostName = hostname;
    networkmanager.enable = true;
  };
  
  environment.systemPackages = ( import ./packages.nix { inherit pkgs; }).basePackages;

  programs = {
    zsh.enable = true;
  };
}
