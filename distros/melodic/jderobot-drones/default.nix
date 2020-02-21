
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, drone-wrapper, rqt-drone-teleop, rqt-ground-robot-teleop }:
buildRosPackage {
  pname = "ros-melodic-jderobot-drones";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/jderobot_drones/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "3fb47b09572914f7c0cdadf589845476dbde4661bb67fa3b950f82aafb744cd1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ drone-wrapper rqt-drone-teleop rqt-ground-robot-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_drones stack'';
    license = with lib.licenses; [ mit ];
  };
}
