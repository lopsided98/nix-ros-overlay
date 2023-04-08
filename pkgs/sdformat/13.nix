{ callPackage, gz-cmake_3, gz-math_7, gz-utils_2, ... } @ args:

callPackage ./generic.nix (args // {
  version = "13.4.1";
  srcHash = "sha256-BlYXDccIs1kOj34Nwpuemzt1z8aSzZtD8zeWrIQTJHw=";
  gz-cmake = gz-cmake_3;
  gz-math = gz-math_7;
  gz-utils = gz-utils_2;
})

