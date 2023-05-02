
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot3-manipulation-bringup, turtlebot3-manipulation-cartographer, turtlebot3-manipulation-description, turtlebot3-manipulation-hardware, turtlebot3-manipulation-moveit-config, turtlebot3-manipulation-navigation2, turtlebot3-manipulation-teleop }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-manipulation";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/foxy/turtlebot3_manipulation/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "d3c23ae67693ba0116db446971753a2159d325eaf8758c95921004087ac1c8f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot3-manipulation-bringup turtlebot3-manipulation-cartographer turtlebot3-manipulation-description turtlebot3-manipulation-hardware turtlebot3-manipulation-moveit-config turtlebot3-manipulation-navigation2 turtlebot3-manipulation-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 package for turtlebot3_manipulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
