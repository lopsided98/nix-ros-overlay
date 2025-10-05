{
  description = "ROS overlay for the Nix package manager";

  inputs = {
    nixpkgs.url = "github:lopsided98/nixpkgs/nix-ros";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    with nixpkgs.lib;
    with flake-utils.lib;
    eachSystem systems.flakeExposed (system: let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ self.overlays.default ];
      };
      genAttrs' = xs: f: listToAttrs (map f xs); # TODO remove after we're at newer nixpkgs
      exampleForDistro = exampleName: rosDistro:
        nameValuePair "example-${exampleName}-${rosDistro}" (
          import ./examples/${exampleName}.nix { inherit pkgs rosDistro; }
        );
      inherit (pkgs.rosPackages.lib) distroNames;
    in {
      legacyPackages = pkgs.rosPackages;
      packages.update-overlay = pkgs.callPackage ./maintainers/scripts/update-overlay.nix { };

      devShells = {
        example-turtlebot3-gazebo = import ./examples/turtlebot3-gazebo.nix { inherit pkgs; };
        example-ros2-basic = import ./examples/ros2-basic.nix { inherit pkgs; };
        example-ros2-desktop = import ./examples/ros2-desktop.nix { inherit pkgs; };
        example-ros2-desktop-full = import ./examples/ros2-desktop-full.nix { inherit pkgs; };
        example-ros2-gz = self.devShells.${system}.example-ros2-gz-jazzy;
        example-ros2-turtlebot4-gz = import ./examples/ros2-turtlebot4-gz.nix { inherit pkgs; };

        # Development environment for the custom GitHub action
        nix-ros-build-action = pkgs.callPackage ./.github/actions/nix-ros-build-action/shell.nix { };
      }
      // (genAttrs' [ "jazzy" "kilted" "rolling" ] (exampleForDistro "ros2-gz"))
      // (genAttrs' distroNames (exampleForDistro "ros2-desktop"))
      // (genAttrs' distroNames (exampleForDistro "ros2-desktop-full"))
      ;
    }) // {
      overlays.default = import ./overlay.nix;
      nixosModules.default = ./modules;

      overlay = nixpkgs.lib.warn
        "'nix-ros-overlay.overlay' is deprecated, use 'nix-ros-overlay.overlays.default' instead"
        self.overlays.default;
      nixosModule = nixpkgs.lib.warn
        "'nix-ros-overlay.nixosModule' is deprecated, use 'nix-ros-overlay.nixosModules.default' instead"
        self.nixosModules.default;
      templates.default = {
        path = ./examples/flake;
        description = "Basic ROS flake";
      };
    };

  nixConfig = {
    extra-substituters = [ "https://ros.cachix.org" ];
    extra-trusted-public-keys = [ "ros.cachix.org-1:dSyZxI8geDCJrwgvCOHDoAfOm5sV1wCPjBkKL+38Rvo=" ];
  };

}
