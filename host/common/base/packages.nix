{ pkgs, ... }:
{
  basePackages = with pkgs; [
    bat
    curl
    git
    jq
    ripgrep
    traceroute
    tree
    unzip
    vim
    wget
  ];
}
