{ pkgs, desktop, ... }:
{
  imports = [
    (./. + "/${desktop}.nix")
    # ../services/pipewire.nix
  ];

#  hardware.graphics.enable = true;
}
