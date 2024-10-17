{ callPackage, ignition, ... } @ args:

callPackage ./generic.nix (args // {
  version = "9.10.1";
  srcHash = "sha256-C2r5lVqUoisHfrkV8rYbNfVZY8EtDxrstfvltRNHpQ0=";
  gz-cmake = ignition.cmake2;
  gz-math = ignition.math6;
  gz-utils = null;
})

