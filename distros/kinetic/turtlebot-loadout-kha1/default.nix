
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-loadout-kha1";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/TurtleBot-Mfg-release/turtlebot_loadout_kha1/archive/release/kinetic/turtlebot_loadout_kha1/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "6356981d0c08c5153c1b56e630b8149a31970f1e37c15dac44662cdc7b31c71e";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enables the TurtleBot mobile robot KHA1 hardware loadout'';
    license = with lib.licenses; [ mit "Apache-1.0" ];
  };
}
