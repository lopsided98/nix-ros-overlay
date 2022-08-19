{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "";
  version = "1.0.0";
  srcHash = "sha256-9kAzm9EUQ2evqqM2rSquCYs3DXgT+3E0OKqP/2xEaUI=";
  ignition-cmake = ignition.cmake0;
  ignition-math = ignition.math4;
} // args)
