{ callPackage, ... } @ args :

callPackage ./. ({
  majorVersion = "";
  version = "0.6.1";
  srcHash = "sha256-DwIzyLC51zQpoqZC2yJ5RMuODkQVSPROOXnUpIccdJE=";
} // args)
