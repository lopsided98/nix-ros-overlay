
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup, cob-default-robot-behavior, cob-default-robot-config, cob-hardware-config, cob-moveit-config }:
buildRosPackage {
  pname = "ros-kinetic-cob-robots";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_robots/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "324242db857c14029918799178c4bec1cfd47cfaa7a4e39efb6b4204a4a2273a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-bringup cob-default-robot-behavior cob-default-robot-config cob-hardware-config cob-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for hardware configuration as well as launch files for starting up the basic layer for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
