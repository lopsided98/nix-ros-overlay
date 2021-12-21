{ callPackage, ignition } @ args :

callPackage ./. ({
  majorVersion = "4";
  version = "4.4.0";
  srcSha256 = "1366nxy518amxs618h97jqzsl9755ig78w04s1ci3w5nir5silmq";
  ignition-common = ignition.common3;
  ignition-msgs = ignition.msgs5;
} // args)
