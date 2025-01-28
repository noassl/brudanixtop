{
  description = "brudanixtop flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@args:
    let
      inherit (self) outputs;

      system = "x86_64-linux";

      pkgs = import nixpkgs {
        inherit system;

        config = {
          allowUnfree = true;
        };
      };
    in
    {
      nixosConfigurations = {
        brudanixtop = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit args system; };
          modules = [
            ./nixos/configuration.nix
            home-manager.nixosModule
          ];
        };
      };
    };
}
