{ callPackage, sdformat_6, ignition, ... } @ args:

callPackage ./. (args // {
  version = "9.16.0";
  srcSha256 = "0nyic4s49jy6nwq5qfhj51b1rp69g12s5dnl09h8jcja4mgq1wlc";
  sdformat = sdformat_6;
  ignition-common = ignition.common1;
  ignition-transport = ignition.transport4;
  ignition-msgs = ignition.msgs1;
  ignition-fuel-tools = ignition.fuel-tools1;
})

