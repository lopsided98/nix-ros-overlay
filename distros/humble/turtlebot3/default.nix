
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-bringup, turtlebot3-cartographer, turtlebot3-description, turtlebot3-example, turtlebot3-navigation2, turtlebot3-node, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-humble-turtlebot3";
  version = "2.2.6-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/humble/turtlebot3/2.2.6-1.tar.gz";
    name = "2.2.6-1.tar.gz";
    sha256 = "ad008799ba93de050e7ac73da2261f8162b07b596d337892b25971cc33875a7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot3-bringup turtlebot3-cartographer turtlebot3-description turtlebot3-example turtlebot3-navigation2 turtlebot3-node turtlebot3-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 packages for TurtleBot3";
    license = with lib.licenses; [ asl20 ];
  };
}
