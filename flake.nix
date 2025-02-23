{
  description = "Toby's NixOS configuration";

  inputs = {
    # Nix ecosystem
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs";

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";

      inputs.nixpkgs.follows = "nixpkgs";
    };

    # WezTerm
    wezterm.url = "github:wez/wezterm?dir=nix";

    # Stylix
    stylix.url = "github:danth/stylix/release-24.11";

    # Nixvim
    nixvim.url = "github:nix-community/nixvim/nixos-24.11";

    # Nix formatter
    alejandra.url = "github:kamadorueda/alejandra/3.1.0";
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        deuterium = nixpkgs.lib.nixosSystem rec {
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
            inputs.stylix.nixosModules.stylix

            ./hosts/deuterium

            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;
                backupFileExtension = "hm-backup";
                extraSpecialArgs = {
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
              };

              home-manager.users.toby = {
                imports = [
                  ./home/toby/deuterium.nix
                ];
              };
            }
          ];
        };
      };
    };
}
