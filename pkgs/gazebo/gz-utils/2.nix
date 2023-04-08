{ callPackage, gz-cmake_3, ... } @ args:

callPackage ./generic.nix (args // {
  version = "2.0.0";
  srcHash = "sha256-osY+q+H7F05gcLrpyMGeLsddh2nevG4lZsFeyeZWdaY=";
  gz-cmake = gz-cmake_3;
})
