{
  self,
  inputs,
  outputs,
  stateVersion,
  username,
  system,
  ...
}:
{
  mkHome = 
  {
    hostname,
    user ? username,
    desktop ? null,
    system ? "x86_64-linux"
  }:
  inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = inputs.nixpkgs.legacyPackages.${system};
    extraSpecialArgs = {
      inherit
        self
        inputs
        outputs
        stateVersion
        hostname
        desktop
        system
        ;
      username = user;
    };
    modules = [
      ../home
    ];
  };

  mkHost = 
  {
    hostname,
    desktop ? null,
    pkgsInput ? inputs.nixpkgs,
  }:
  pkgsInput.lib.nixosSystem { 
    specialArgs = {
      inherit
        self
        inputs
        outputs
        stateVersion
        username
        hostname
        desktop
        ;
    };
    modules = [
      ../host
    ];
  };

  forAllSystems = inputs.nixpkgs.lib.genAttrs [
    "aarch64-linux"
    "i686-linux"
    "x86_64-linux"
    "aarch64-darwin"
    "x86_64-darwin"
  ];
}
