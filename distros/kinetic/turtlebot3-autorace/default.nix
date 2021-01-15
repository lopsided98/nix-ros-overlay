
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-autorace-camera, turtlebot3-autorace-control, turtlebot3-autorace-core, turtlebot3-autorace-detect }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-autorace";
  version = "1.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3_autorace-release/archive/release/kinetic/turtlebot3_autorace/1.2.0-0.tar.gz";
    name = "1.2.0-0.tar.gz";
    sha256 = "9d5482ad8dd023fa75d67e8fec1a14550b8df425a0d5903edf52027da90fc8ad";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtlebot3-autorace-camera turtlebot3-autorace-control turtlebot3-autorace-core turtlebot3-autorace-detect ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutoRace ROS packages for AutoRace with TurtleBot3 (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
