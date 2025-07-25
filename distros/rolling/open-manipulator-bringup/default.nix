
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-hardware-interface, gz-ros2-control, open-manipulator-description, rclpy, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-open-manipulator-bringup";
  version = "4.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/rolling/open_manipulator_bringup/4.0.6-1.tar.gz";
    name = "4.0.6-1.tar.gz";
    sha256 = "80d929b3e4945c4b5256e1b9b31c1d6884181b9ac577464bee21cb114155b519";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ dynamixel-hardware-interface gz-ros2-control open-manipulator-description rclpy robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim ros2-control ros2-controllers rviz2 xacro ];

  meta = {
    description = "OpenMANIPULATOR bringup ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
