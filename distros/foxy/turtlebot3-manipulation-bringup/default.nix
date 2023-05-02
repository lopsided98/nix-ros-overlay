
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros, gripper-controllers, robot-state-publisher, ros2-control, ros2-controllers, rviz2, turtlebot3-manipulation-description, xacro }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-manipulation-bringup";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/foxy/turtlebot3_manipulation_bringup/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "23c6ac1ab76287a1b5e2cb4f4a43354e55f0cd031b93e3123e694a6e8a78fed4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo-ros gripper-controllers robot-state-publisher ros2-control ros2-controllers rviz2 turtlebot3-manipulation-description xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 package for turtlebot3_manipulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
