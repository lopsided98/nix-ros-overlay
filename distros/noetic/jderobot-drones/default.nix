
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, drone-assets, drone-circuit-assets, drone-wrapper, rqt-drone-teleop, rqt-ground-robot-teleop, tello-driver }:
buildRosPackage {
  pname = "ros-noetic-jderobot-drones";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/noetic/jderobot_drones/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "4993de1fb338d286572a2d737cae4977737658febd1aecaf82ae96637531a1ee";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ drone-assets drone-circuit-assets drone-wrapper rqt-drone-teleop rqt-ground-robot-teleop tello-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_drones stack'';
    license = with lib.licenses; [ mit ];
  };
}
