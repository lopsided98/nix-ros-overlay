{ stdenv, callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "";
  version = "1.1.1";
  srcSha256 = "0338whym8p2alg29nq2d7hvg3vg5qpngcw9y7lswzp9rnacznzwz";
  ignition-cmake = ignition.cmake0;
  ignition-math = ignition.math4;
} // args)
