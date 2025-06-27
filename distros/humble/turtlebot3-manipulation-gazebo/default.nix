
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros, gripper-controllers, robot-state-publisher, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-gazebo";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_simulations-release/archive/release/humble/turtlebot3_manipulation_gazebo/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "0ad60687ce7ab3adefe6c6b516b41023f13b4e8d8d51e3d80a104c5f8d801c3f";
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
