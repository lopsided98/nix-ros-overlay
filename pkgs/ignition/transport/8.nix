{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "8";
  version = "8.3.0";
  srcSha256 = "sha256-Yh1DtedwY+rxYdkud9A+fGgA0b5MVUJHa7LDY3OPtMw=";
  ignition-msgs = ignition.msgs5;
} // args)
