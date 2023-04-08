{ callPackage, ignition, ... } @ args:

callPackage ./generic.nix (args // {
  version = "9.10.0";
  srcHash = "sha256-VmDU0VR/TkA5461kgwsp0uv8aqsqqG7YbY2DBe5Os8I=";
  gz-cmake = ignition.cmake2;
  gz-math = ignition.math6;
  gz-utils = null;
})

