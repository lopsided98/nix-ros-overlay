{
  description = "ROS overlay for the Nix package manager";

  inputs = {
    nixpkgs.url = "github:lopsided98/nixpkgs/nix-ros";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    with nixpkgs.lib;
    with flake-utils.lib;
    eachSystem allSystems (system: let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ self.overlays.default ];
      };
    in {
      legacyPackages = pkgs.rosPackages;
    }) // {
      overlays.default = import ./overlay.nix;
      nixosModules.default = import ./modules;

      overlay = nixpkgs.lib.warn
        "'nix-ros-overlay.overlay' is deprecated, use 'nix-ros-overlay.overlays.default' instead"
        self.overlays.default;
      nixosModule = nixpkgs.lib.warn
        "'nix-ros-overlay.nixosModule' is deprecated, use 'nix-ros-overlay.nixosModules.default' instead"
        self.nixosModules.default;
    };

  nixConfig = {
    extra-substituters = [ "https://ros.cachix.org" ];
    extra-trusted-public-keys = [ "ros.cachix.org-1:dSyZxI8geDCJrwgvCOHDoAfOm5sV1wCPjBkKL+38Rvo=" ];
  };

}
