{
  description = "Bryces nixos flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser.url = "github:0xc000022070/zen-browser-flake";
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
      stateVersion = "24.11";
      username = "bryce";
      system = "x86_64-linux";
      libx = import ./lib {
        inherit
          self
          inputs
          outputs
          stateVersion
          username
          system
          ;
      };

    in {
      homeConfigurations = {
        "${username}@narya" = libx.mkHome {
          hostname = "narya";
          desktop = "i3";
        };

        "${username}@nenya" = libx.mkHome {
          hostname = "nenya";
          desktop = "gnome";
        };
      };

      nixosConfigurations = {
        narya = libx.mkHost {
          hostname = "narya";
          desktop = "i3";
        };
        nenya = libx.mkHost {
          hostname = "nenya";
          desktop = "gnome";
        };
      };
      
      packages = libx.forAllSystems (system: import ./pkgs nixpkgs.legacyPackages.${system});
      overlays = import ./overlays { inherit inputs; };
    };
}
