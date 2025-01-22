{ pkgs, desktop, ... }:
{
  imports = [
    (./. + "/${desktop}.nix")
    # ../services/pipewire.nix
  ];
  environment.systemPackages = ( import ./packages.nix { inherit pkgs; }).desktopPackages;

#  hardware.graphics.enable = true;
}
