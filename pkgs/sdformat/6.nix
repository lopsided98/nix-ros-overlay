{ callPackage, ignition, ... } @ args:

callPackage ./. (args // {
  version = "6.2.0";
  srcSha256 = "1ylqb22p0w3mikpl6vjqi4jkq15sqzl765i3232a0fd6y148d0dy";
  ignition-math = ignition.math4;
})

