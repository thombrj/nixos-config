{ pkgs, self, ... }:
{
  imports = [
    # ./git.nix
    ./nvim.nix
    ./tmux.nix
  ];

  programs = {
    git.enable = true;
    home-manager.enable = true;
    jq.enable = true;
    lazygit.enable = true;
  };
}
