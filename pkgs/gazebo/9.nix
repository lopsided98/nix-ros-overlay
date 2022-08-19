{ callPackage, sdformat_6, ignition, ... } @ args:

callPackage ./. (args // {
  version = "9.19.0";
  srcHash = "sha256-HzykMIJLEgrgx8TAA3oaVue2v2xQcxsUi1x1v8Rtf+c=";
  sdformat = sdformat_6;
  ignition-common = ignition.common1;
  ignition-transport = ignition.transport4;
  ignition-msgs = ignition.msgs1;
  ignition-fuel-tools = ignition.fuel-tools1;
})

