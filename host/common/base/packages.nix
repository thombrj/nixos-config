{ pkgs, ... }:
{
  basePackages = with pkgs; [
    bat
    curl
    git
    jq
    ripgrep
    stow
    traceroute
    tree
    unzip
    vim
    wget
  ];
}
