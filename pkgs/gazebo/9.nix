{ callPackage, sdformat_6, ignition, ... } @ args:

callPackage ./. (args // {
  version = "9.13.1";
  srcSha256 = "092wlj6swx4d5250j9a320ii6c0nlhfvbz6bqdpxg410xxd2lsgz";
  sdformat = sdformat_6;
  ignition-common = ignition.common1;
  ignition-transport = ignition.transport4;
  ignition-msgs = ignition.msgs1;
  ignition-fuel-tools = ignition.fuel-tools1;
})

