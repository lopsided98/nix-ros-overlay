{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "3";
  version = "3.15.1";
  srcHash = "sha256-WhgCwbRgw6y4+LWpjBTauvDLpFbUvA3SJIMF9m9pdPY=";
} // args)
