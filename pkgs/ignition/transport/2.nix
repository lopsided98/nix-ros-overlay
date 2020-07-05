{ stdenv, callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "2";
  version = "2.1.0";
  srcSha256 = "0q9xhl6dmmykpf18a3hyjnl7q66jlxri1v72d7d1ld0qa4srp0kp";
  ignition-cmake = ignition.cmake0;
  ignition-math = null;
  ignition-msgs = ignition.msgs0;
} // args)
