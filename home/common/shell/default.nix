{ pkgs, self, ... }:
{
  imports = [
    # ./git.nix
    ./nvim.nix
    ./tmux.nix
    ./helix.nix
  ];

  programs = {
    fzf.enable = true;
    git.enable = true;
    home-manager.enable = true;
    jq.enable = true;
    lazygit.enable = true;
    oh-my-posh.enable = true;
  };
}
