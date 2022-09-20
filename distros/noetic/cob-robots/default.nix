
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup, cob-default-robot-behavior, cob-default-robot-config, cob-hardware-config, cob-moveit-config }:
buildRosPackage {
  pname = "ros-noetic-cob-robots";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_robots/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "9c87bc8c182e029bebc24a97ee626fa7ecca185cf66adaf3646b0f23657dc6ef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-bringup cob-default-robot-behavior cob-default-robot-config cob-hardware-config cob-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for hardware configuration as well as launch files for starting up the basic layer for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
