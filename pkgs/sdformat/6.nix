{ callPackage, ignition, ... } @ args:

callPackage ./generic.nix (args // {
  version = "6.3.1";
  srcHash = "sha256-JPjDFLFP0+mZ7q1am3iPmDlcyGG/i1Yti8zKdY7d7ME=";
  gz-cmake = null;
  gz-math = ignition.math4;
  gz-utils = null;
})
