{ callPackage, ignition } @ args :

callPackage ./. ({
  majorVersion = "4";
  version = "4.5.0";
  srcHash = "sha256-//udxWLXP2CTY3i3mEN9u9manlbwu9lBjhPJD4nd+R8=";
  ignition-common = ignition.common3;
  ignition-msgs = ignition.msgs5;
} // args)
