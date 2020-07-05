{ stdenv, callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "2";
  version = "2.9.0";
  srcSha256 = "1bqx3xxdqz1qjslh74df21qxmkghca0bf7bghbid86rspf36g3h4";
  ignition-cmake = ignition.cmake0;
} // args)
