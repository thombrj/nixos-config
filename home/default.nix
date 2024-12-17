{
  config,
  desktop,
  lib,
  outputs,
  stateVersion,
  username,
  inputs,
  ...
}:
{
  imports = 
    [
      ./common/shell
    ]
    ++ lib.optional (builtins.isString desktop) ./common/desktop
    ++ lib.optional (builtins.pathExists (
      ./. + "/common/users/${username}"
    )) ./common/users/${username};

    home = {
      inherit username stateVersion;
      homeDirectory = "/home/${username}";
    };
    
    nixpkgs = {
      overlays = [];

      config = {
        allowUnfree = true;
      };
    };

}
