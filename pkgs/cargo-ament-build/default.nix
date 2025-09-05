{ pkgs, fetchFromGitHub }:

(import ./Cargo.nix { inherit pkgs; }).rootCrate.build.override ({
  crateOverrides ? {}, ...
}: {
  crateOverrides = crateOverrides // {
    cargo-ament-build = { ... }: {
      src = fetchFromGitHub {
        owner = "ros2-rust";
        repo = "cargo-ament-build";
        rev = "v0.1.9";
        hash = "sha256-5D0eB3GCQLgVYuYkHMTkboruiYSAaWy3qZjF/hVpRP0=";
      };
    };
  };
})

