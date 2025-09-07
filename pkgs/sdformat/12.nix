{ callPackage, gz-cmake_2, gz-math_6, gz-utils_1, ... } @ args:

callPackage ./generic.nix (args // {
  version = "12.8.0";
  srcHash = "sha256-XA1leXOP8U+En41uEBRoqPCrxDAAsrgEAXD+CCpjBIk=";
  gz-cmake = gz-cmake_2;
  gz-math = gz-math_6;
  gz-utils = gz-utils_1;
})

