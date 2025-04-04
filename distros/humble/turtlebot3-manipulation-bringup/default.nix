
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros, gripper-controllers, robot-state-publisher, ros2-control, ros2-controllers, rviz2, turtlebot3-manipulation-description, xacro }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-bringup";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_bringup/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "afb0216b617c9fa3093df3ffc11c9d366a8b1a3e608fa2b18744286262059f1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-ros gripper-controllers robot-state-publisher ros2-control ros2-controllers rviz2 turtlebot3-manipulation-description xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 package for turtlebot3_manipulation";
    license = with lib.licenses; [ asl20 ];
  };
}
