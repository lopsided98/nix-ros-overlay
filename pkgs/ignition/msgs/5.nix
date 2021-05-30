{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "5";
  version = "5.7.0";
  srcSha256 = "0qky3bapa5r396wfl2fhrjljzya3k845dp6pzld4pkk588w9q3mj";
} // args)
