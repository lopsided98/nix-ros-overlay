{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "3";
  version = "3.13.2";
  srcSha256 = "0kh2x8lmyxwms1s1fqyf331463j191337jcvhc77ga9x5igspfb5";
} // args)
