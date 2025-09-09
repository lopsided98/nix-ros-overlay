
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros, gripper-controllers, robot-state-publisher, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-gazebo";
  version = "2.3.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/humble/turtlebot3_manipulation_gazebo/2.3.8-1.tar.gz";
    name = "2.3.8-1.tar.gz";
    sha256 = "a46c72bc9c85c44797407c40a2594e640643bf212bce5f413d0e3ae50bf04b04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-ros gripper-controllers robot-state-publisher ros2-control ros2-controllers rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Gazebo simulation package for the TurtleBot3 manipulation";
    license = with lib.licenses; [ asl20 ];
  };
}
