{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "4";
  version = "4.0.0";
  srcHash = "sha256-QS53R6N2hghbbmj8lk7P6S8255n4LkEn9ra+wA4XBSM=";
  ignition-cmake = ignition.cmake0;
  ignition-math = ignition.math4;
  ignition-msgs = ignition.msgs1;
} // args)
