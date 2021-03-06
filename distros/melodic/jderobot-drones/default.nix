
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, drone-assets, drone-wrapper, rqt-drone-teleop, rqt-ground-robot-teleop }:
buildRosPackage {
  pname = "ros-melodic-jderobot-drones";
  version = "1.3.7-r3";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/jderobot_drones/1.3.7-3.tar.gz";
    name = "1.3.7-3.tar.gz";
    sha256 = "7261c3ca84fec7223d490cd7a882cd42bfcce72effdc04b1c3eb4fadbb91bb6c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ drone-assets drone-wrapper rqt-drone-teleop rqt-ground-robot-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_drones stack'';
    license = with lib.licenses; [ mit ];
  };
}
