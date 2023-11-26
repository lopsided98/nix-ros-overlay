{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "3";
  version = "3.16.0";
  srcHash = "sha256-lK3c+aB+46/Pid9vO/gxUh6zicPHf4u2llvwW6KD0Ec=";
} // args)
