{ stdenv, callPackage, ... } @ args :

callPackage ./. ({
  majorVersion = "";
  version = "0.6.1";
  srcSha256 = "14bl3j3s9m3r757g8j0m8h78xjs4g4idnhm6l8lk9mxrn34360hg";
} // args)
