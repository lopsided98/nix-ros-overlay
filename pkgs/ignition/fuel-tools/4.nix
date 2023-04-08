{ callPackage, ignition } @ args :

callPackage ./. ({
  majorVersion = "4";
  version = "4.8.3";
  srcHash = "sha256-Fa/xKb5J37OM0p8HB+Iu1cA47BbPBYZkO4z8XhSB5oc=";
  ignition-common = ignition.common3;
  ignition-msgs = ignition.msgs5;
} // args)
