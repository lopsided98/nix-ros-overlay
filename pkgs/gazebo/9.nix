{ callPackage, sdformat_6, ogre1_10, ignition, ... } @ args:

callPackage ./. (args // {
  version = "9.18.0";
  srcSha256 = "0j9458bzm7a3pl4nsialypw2s3p1fk3sjpji8kw8aqkrdrpdw03d";
  sdformat = sdformat_6;
  ogre = ogre1_10;
  ignition-common = ignition.common1;
  ignition-transport = ignition.transport4;
  ignition-msgs = ignition.msgs1;
  ignition-fuel-tools = ignition.fuel-tools1;
})

