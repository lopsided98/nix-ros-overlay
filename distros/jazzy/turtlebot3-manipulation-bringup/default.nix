
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, ros2-control, ros2-controllers, rviz2, turtlebot3-manipulation-description, xacro }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot3-manipulation-bringup";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/jazzy/turtlebot3_manipulation_bringup/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "7abd5ef0d6ca095b99a390c9344eedc0efd358d8a2a3af595f1ee3be0d67faa0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher ros2-control ros2-controllers rviz2 turtlebot3-manipulation-description xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 package for turtlebot3_manipulation";
    license = with lib.licenses; [ asl20 ];
  };
}
