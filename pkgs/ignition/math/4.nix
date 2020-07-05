{ stdenv, callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "4";
  version = "4.0.0";
  srcSha256 = "18vwdxcmf6x2asq9132h2n0q41ygc2wb10ahf5x8mw777ww9sg0q";
  ignition-cmake = ignition.cmake0;
} // args)
