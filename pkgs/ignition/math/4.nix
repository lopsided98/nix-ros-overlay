{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "4";
  version = "4.0.0";
  srcHash = "sha256-GDydOD/n8Ip6cVCBsLhgzweCgRVQjJCwVqIbV1lvfKM=";
  ignition-cmake = ignition.cmake0;
} // args)
