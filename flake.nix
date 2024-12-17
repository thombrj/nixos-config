{
  description = "Bryces nixos flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-23.11";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = 
    {
      self,
      home-manager,
      nixpkgs,
      ... 
    }@inputs:
    let
      inherit (self) outputs;
      stateVersion = "23.11";
      username = "bryce";

      libx = import ./lib {
        inherit
	  self
	  inputs
	  outputs
	  stateVersion
	  username
	  ;
      };

    in {

      homeConfigurations = {
        "${username}@narya" = libx.mkHome {
          hostname = "narya";
          desktop = "i3";
        };
      };

      nixosConfigurations = {
        narya = libx.mkHost {
	  hostname = "narya";
          desktop = "i3";
        };
      };
      
      packages = libx.forAllSystems (system: import ./pkgs nixpkgs.legacyPackages.${system});
      overlays = import ./overlays { inherit inputs; };
    };
}
