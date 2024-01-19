
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo-ros, gripper-controllers, robot-state-publisher, ros2-control, ros2-controllers, rviz2, turtlebot3-manipulation-description, xacro }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-manipulation-bringup";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3_manipulation-release/archive/release/humble/turtlebot3_manipulation_bringup/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "56ea87d8b7a122bd811fb0ee9850acbc1d29c02b8f34234184ee20a388b450df";
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
