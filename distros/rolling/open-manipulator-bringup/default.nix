
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-hardware-interface, gripper-controllers, gz-ros2-control, open-manipulator-description, rclpy, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-open-manipulator-bringup";
  version = "3.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/rolling/open_manipulator_bringup/3.2.2-1.tar.gz";
    name = "3.2.2-1.tar.gz";
    sha256 = "bf3825418daff5381d741a0ca5ce843b4a954180015d5c9a94836b9f49541226";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ dynamixel-hardware-interface gripper-controllers gz-ros2-control open-manipulator-description rclpy robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim ros2-control ros2-controllers rviz2 xacro ];

  meta = {
    description = "OpenMANIPULATOR bringup ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
