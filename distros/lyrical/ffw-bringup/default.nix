
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-hardware-interface, ffw-description, gz-ros2-control, image-transport-plugins, rclpy, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-lyrical-ffw-bringup";
  version = "1.1.14-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/lyrical/ffw_bringup/1.1.14-3.tar.gz";
    name = "1.1.14-3.tar.gz";
    sha256 = "2b2f026c825ff107c5d46aabf8a97e0aaec184f3dd420382e4e23d0178edc44f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ dynamixel-hardware-interface ffw-description gz-ros2-control image-transport-plugins rclpy robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim ros2-control ros2-controllers rviz2 xacro ];

  meta = {
    description = "ROS 2 launch scripts for starting the FFW";
    license = with lib.licenses; [ asl20 ];
  };
}
