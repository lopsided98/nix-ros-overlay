{ callPackage, gz-cmake_2, gz-utils_1, ... } @ args:

callPackage ./generic.nix (args // {
  baseName = "ignition";
  version = "6.15.1";
  srcHash = "sha256-G6m7mg0xlnXknznLhFPbN/f80DUnWlFksfLAH6339Io=";
  gz-cmake = gz-cmake_2;
  gz-utils = gz-utils_1;
})
