{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "";
  version = "1.1.1";
  srcHash = "sha256-n3/7mbI53c81PT5x9uzF5e3xNjxNYJvEo0pcVD3kaAw=";
  ignition-cmake = ignition.cmake0;
  ignition-math = ignition.math4;
} // args)
