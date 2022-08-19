{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "3";
  version = "3.14.1";
  srcHash = "sha256-UcXNt42CiqN//nfMSTjbGH8Imeey2HojojOw2t8csHw=";
} // args)
