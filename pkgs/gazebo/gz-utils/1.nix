{ callPackage, gz-cmake_2, ... } @ args:

callPackage ./generic.nix (args // {
  baseName = "ignition";
  version = "1.5.1";
  srcHash = "sha256-Ymlw1SBoSlHwxe/4E3jdMy8ECCFNy8YGboqTQi6UIs4=";
  gz-cmake = gz-cmake_2;
})
