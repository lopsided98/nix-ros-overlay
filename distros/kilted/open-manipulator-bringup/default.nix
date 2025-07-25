
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-hardware-interface, gz-ros2-control, open-manipulator-description, rclpy, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-kilted-open-manipulator-bringup";
  version = "4.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/kilted/open_manipulator_bringup/4.0.6-1.tar.gz";
    name = "4.0.6-1.tar.gz";
    sha256 = "1f031e181006d8d480b4e9b93f513bffc19a69abbfd51e2cb0bbac1034c1b4fb";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ dynamixel-hardware-interface gz-ros2-control open-manipulator-description rclpy robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim ros2-control ros2-controllers rviz2 xacro ];

  meta = {
    description = "OpenMANIPULATOR bringup ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
