{
  config,
  desktop,
  hostname,
  inputs,
  lib,
  outputs,
  stateVersion,
  username,
  ...
}:
{
  imports = [
    (./. + "/${hostname}/hardware.nix")
    (./. + "/${hostname}/boot.nix")

    ./common/base
    ./common/users/${username}
  ]
  ++ lib.optional (builtins.pathExists (./. + "/${hostname}/extra.nix")) ./${hostname}/extra.nix
  ++ lib.optional (builtins.isString desktop) ./common/desktop;

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
	      "flakes"
      ];
      trusted-users = [
       "root"
       "wheel"
      ];
    };
  };

  system = {
    inherit stateVersion;
  };
}
