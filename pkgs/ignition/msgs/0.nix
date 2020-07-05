{ stdenv, callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "";
  # Don't use latest version because it requires ignition-math3
  version = "0.6.1";
  srcSha256 = "0d0xfranw82yd61hclw44iib3r8k6414h9fvz54fszgm00n3rvq6";
  ignition-cmake = ignition.cmake0;
  ignition-math = ignition.math2;
} // args)
