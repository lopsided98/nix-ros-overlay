
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-hardware-interface, gz-ros2-control, open-manipulator-description, rclpy, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-open-manipulator-bringup";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/open_manipulator_bringup/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "b9a787f9b3ffd4892326e1ca4333ea0103afc4513f47ffc5bb04fdf00db66dc9";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ dynamixel-hardware-interface gz-ros2-control open-manipulator-description rclpy robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim ros2-control ros2-controllers rviz2 xacro ];

  meta = {
    description = "OpenMANIPULATOR bringup ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
