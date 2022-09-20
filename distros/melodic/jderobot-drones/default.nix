
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, drone-assets, drone-wrapper, rqt-drone-teleop, rqt-ground-robot-teleop }:
buildRosPackage {
  pname = "ros-melodic-jderobot-drones";
  version = "1.3.10-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/jderobot_drones/1.3.10-1.tar.gz";
    name = "1.3.10-1.tar.gz";
    sha256 = "cdc5ddad637cbac4972c70e3bfbc209705abf6568259ee94688c82414264aaf8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ drone-assets drone-wrapper rqt-drone-teleop rqt-ground-robot-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_drones stack'';
    license = with lib.licenses; [ mit ];
  };
}
