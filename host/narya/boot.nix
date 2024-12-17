{ pkgs, lib, ... }:
{
  boot = {
    loader.grub.enable = true;
    loader.grub.device = "/dev/vda";
  };
}
