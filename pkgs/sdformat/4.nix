{ callPackage, ignition, ... } @ args:

callPackage ./. (args // {
  version = "4.4.0";
  srcSha256 = "09qmvsdbcb2y5ygf76z0aann3v2szbcf3ap7hzq36cwxys2aj924";
  ignition-math = ignition.math2;
})

