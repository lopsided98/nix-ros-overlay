{ callPackage, ignition } @ args :

callPackage ./. ({
  majorVersion = "4";
  version = "4.3.0";
  srcSha256 = "028f6ai61fxdg0ilss3hx7m9kdpahpwrcjqw1gv2rjdb9wh1iwn6";
  ignition-common = ignition.common3;
  ignition-msgs = ignition.msgs5;
} // args)
