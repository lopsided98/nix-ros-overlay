{ pkgs, fetchFromGitHub }:

(import ./Cargo.nix { inherit pkgs; }).rootCrate.build.override ({
  crateOverrides ? {}, ...
}: {
  crateOverrides = crateOverrides // {
    cargo-ament-build = { ... }: {
      src = fetchFromGitHub {
        owner = "ros2-rust";
        repo = "cargo-ament-build";
        rev = "v0.1.8";
        hash = "sha256-P3HX3LXQLA2NvFeV3B1baGrl0CaPWAn4Yzh+aAgUuBM=";
      };
    };
  };
})

