{ callPackage, ... }@args:

callPackage ./generic.nix (
  {
    version = "3.0.1";
    srcHash = "sha256-yDQYdui+JtLhBoXHRMvyhAqrnsbOSTx9qfnddYjuH7Q=";
  }
  // args
)
