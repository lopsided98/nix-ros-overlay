
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, drone-assets, drone-wrapper, rqt-drone-teleop, rqt-ground-robot-teleop }:
buildRosPackage {
  pname = "ros-melodic-jderobot-drones";
  version = "1.3.6-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/jderobot_drones/1.3.6-1.tar.gz";
    name = "1.3.6-1.tar.gz";
    sha256 = "c052379afb0e6e0517ad780ed323f924a2508ce6b582832dc210570d1d670db2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ drone-assets drone-wrapper rqt-drone-teleop rqt-ground-robot-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_drones stack'';
    license = with lib.licenses; [ mit ];
  };
}
