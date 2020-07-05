{ stdenv, callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "";
  version = "1.0.0";
  srcSha256 = "0hk98ingz3xa70s73yqkg06kg2q9mqmasdm3mapnfhqls6dk6h7n";
  ignition-cmake = ignition.cmake0;
  ignition-math = ignition.math4;
} // args)
