{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "8";
  version = "8.2.0";
  srcSha256 = "0s1xcvnynfq8dr2j41xxcczl6jc2rfqwhlh26jhwbh1338fqxgnr";
  ignition-msgs = ignition.msgs5;
} // args)
