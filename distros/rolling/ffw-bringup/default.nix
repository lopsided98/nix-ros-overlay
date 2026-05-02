
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-hardware-interface, ffw-description, gz-ros2-control, image-transport-plugins, rclpy, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros2-control, ros2-controllers, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-ffw-bringup";
  version = "1.1.14-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/rolling/ffw_bringup/1.1.14-2.tar.gz";
    name = "1.1.14-2.tar.gz";
    sha256 = "1e04fd548c5b087760fee5a880dbf60d28cafa2a55ef9dd6940084ed2ffbf561";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ dynamixel-hardware-interface ffw-description gz-ros2-control image-transport-plugins rclpy robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-sim ros2-control ros2-controllers rviz2 xacro ];

  meta = {
    description = "ROS 2 launch scripts for starting the FFW";
    license = with lib.licenses; [ asl20 ];
  };
}
