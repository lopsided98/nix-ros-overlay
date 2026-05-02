
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-hardware-interface, gz-ros2-control, open-manipulator-description, rclpy, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-open-manipulator-bringup";
  version = "4.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/rolling/open_manipulator_bringup/4.1.2-2.tar.gz";
    name = "4.1.2-2.tar.gz";
    sha256 = "7b8566d47a94d0ef6a499448990b58985999c209a9a2527807065f892e2cc1fa";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ dynamixel-hardware-interface gz-ros2-control open-manipulator-description rclpy robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim ros2-control ros2-controllers rviz2 xacro ];

  meta = {
    description = "OpenMANIPULATOR bringup ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
