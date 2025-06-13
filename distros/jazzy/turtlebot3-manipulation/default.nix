
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-manipulation-bringup, turtlebot3-manipulation-cartographer, turtlebot3-manipulation-description, turtlebot3-manipulation-hardware, turtlebot3-manipulation-moveit-config, turtlebot3-manipulation-navigation2, turtlebot3-manipulation-teleop }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-manipulation";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/jazzy/turtlebot3_manipulation/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "b6ca9e78a99977f4b987fbe6d727f663ad59fecd51400290bdfb63bce0a2d7ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot3-manipulation-bringup turtlebot3-manipulation-cartographer turtlebot3-manipulation-description turtlebot3-manipulation-hardware turtlebot3-manipulation-moveit-config turtlebot3-manipulation-navigation2 turtlebot3-manipulation-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 package for turtlebot3_manipulation";
    license = with lib.licenses; [ asl20 ];
  };
}
