
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-hardware-interface, ffw-description, gz-ros2-control, image-transport-plugins, rclpy, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-ffw-bringup";
  version = "1.1.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_bringup/1.1.11-1.tar.gz";
    name = "1.1.11-1.tar.gz";
    sha256 = "b32eabdf956e0ad2f18d2016dbaf42542bc140c76a38e76f302872718cd29c10";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ dynamixel-hardware-interface ffw-description gz-ros2-control image-transport-plugins rclpy robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim ros2-control ros2-controllers rviz2 xacro ];

  meta = {
    description = "ROS 2 launch scripts for starting the FFW";
    license = with lib.licenses; [ asl20 ];
  };
}
