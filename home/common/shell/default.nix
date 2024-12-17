{ pkgs, self, ... }:
{
  imports = [
    ./nvim.nix
    ./tmux.nix
  ];

  programs = {
    git.enable = true;
    home-manager.enable = true;
    jq.enable = true;
  };
}
