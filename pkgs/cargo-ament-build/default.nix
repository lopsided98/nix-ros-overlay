{ pkgs, fetchFromGitHub }:

(import ./Cargo.nix { inherit pkgs; }).rootCrate.build.override ({
  crateOverrides ? {}, ...
}: {
  crateOverrides = crateOverrides // {
    cargo-ament-build = { ... }: {
      src = fetchFromGitHub {
        owner = "ros2-rust";
        repo = "cargo-ament-build";
        rev = "60a9bd267b0849f5c17b9e1f159428b04a68b649";
        hash = "sha256-/oB51UXasc+bwp2jXT6gPZR4nCD4leUDvY+T9Ymb1Mk=";
      };
    };
  };
})

