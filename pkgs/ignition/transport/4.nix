{ stdenv, callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "4";
  version = "4.0.0";
  srcSha256 = "08q52w7c1gmnyqkl2bpqk7kkcbz9rx79dz38drdhi1knld3pfbj1";
  ignition-cmake = ignition.cmake0;
  ignition-math = ignition.math4;
  ignition-msgs = ignition.msgs1;
} // args)
