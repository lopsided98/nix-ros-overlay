{ callPackage, ignition } @ args :

callPackage ./. ({
  majorVersion = "1";
  version = "1.2.0";
  srcHash = "sha256-wDiFZpoucsh5HNUR7KD/w0+85EfI4QaL7vXDmdhZSXU=";
  ignition-cmake = ignition.cmake0;
  ignition-common = ignition.common1;
} // args)
