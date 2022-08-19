{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "5";
  version = "5.10.0";
  srcHash = "sha256-yXAvIi/8Eea7szAAgVEKFXfWznxPIp9R3bTIWxpm7hw=";
} // args)
