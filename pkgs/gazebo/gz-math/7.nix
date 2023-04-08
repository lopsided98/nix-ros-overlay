{ callPackage, gz-cmake_3, gz-utils_2, ... } @ args:

callPackage ./generic.nix (args // {
  version = "7.1.0";
  srcHash = "sha256-iAjafpJJSCZoQfb2D5qctUpyph73ZpVRjnJWHU8zNnQ=";
  gz-cmake = gz-cmake_3;
  gz-utils = gz-utils_2;
})
