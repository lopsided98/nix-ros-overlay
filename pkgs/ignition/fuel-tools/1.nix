{ stdenv, callPackage, ignition } @ args :

callPackage ./. ({
  majorVersion = "1";
  version = "1.2.0";
  srcSha256 = "0xa9b7c9khzmxs5hdqf88zjbqky3zyhfq4fm3iwwhwifk9k8af60";
  ignition-cmake = ignition.cmake0;
  ignition-common = ignition.common1;
} // args)
