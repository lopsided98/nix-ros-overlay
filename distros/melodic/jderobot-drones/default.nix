
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, drone-wrapper, rqt-drone-teleop, rqt-ground-robot-teleop }:
buildRosPackage {
  pname = "ros-melodic-jderobot-drones";
  version = "1.3.2-r5";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/jderobot_drones/1.3.2-5.tar.gz";
    name = "1.3.2-5.tar.gz";
    sha256 = "dd483027035e50dd872c64eb8a33505e9d1118022f5671b297f0869ca6b205fd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ drone-wrapper rqt-drone-teleop rqt-ground-robot-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_drones stack'';
    license = with lib.licenses; [ mit ];
  };
}
