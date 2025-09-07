{ callPackage, ... } @ args :

callPackage ./generic.nix ({
  baseName = "ignition";
  version = "2.17.2";
  srcHash = "sha256-aEEUPbh1MX0VYz53p0wQAKWIoXUgf9lGhc6q0JUX9Sg=";
} // args)
