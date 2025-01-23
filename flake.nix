{
  description = "defined's NixOS configuration";

  inputs = {
    # Nix ecosystem
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";

      inputs.nixpkgs.follows = "nixpkgs";
    };

    # WezTerm
    wezterm.url = "github:wez/wezterm?dir=nix";
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        definedos = nixpkgs.lib.nixosSystem rec {
          system = "x86_64-linux";
          specialArgs = {
            inherit inputs system;

            pkgs = import nixpkgs {
              inherit system;
              config.allowUnfree = true;
            };

            unstable-pkgs = import inputs.nixpkgs-unstable {
              inherit system;
              config.allowUnfree = true;
            };
          };

          modules = [
            ./hosts/definedos

            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.backupFileExtension = "hm-backup";
              home-manager.extraSpecialArgs = {
                inherit inputs system;

                pkgs = import nixpkgs {
                  inherit system;
                  config.allowUnfree = true;
                };

                unstable-pkgs = import inputs.nixpkgs-unstable {
                  inherit system;
                  config.allowUnfree = true;
                };
              };

              home-manager.users.defined = {
                imports = [
                  ./home/defined
                ];
              };
            }
          ];
        };
      };
    };
}
