
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartesian-interface, cartesian-trajectory-controller, cartesian-trajectory-interpolation, catkin, twist-controller }:
buildRosPackage {
  pname = "ros-melodic-ros-controllers-cartesian";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_controllers_cartesian-release/archive/release/melodic/ros_controllers_cartesian/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "ab8bfadf8aa20429f57c061e79db446aebeea4bcfe285f785220d2b64d2bd212";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cartesian-interface cartesian-trajectory-controller cartesian-trajectory-interpolation twist-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Cartesian ROS controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
