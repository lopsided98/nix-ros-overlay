
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, controller-manager-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-rolling-ros2controlcli";
  version = "4.27.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/ros2controlcli/4.27.0-1.tar.gz";
    name = "4.27.0-1.tar.gz";
    sha256 = "d70553cd832faef1469aa02a093a64a7305a77a2d6b8ba7db49e0366575767fe";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager controller-manager-msgs python3Packages.pygraphviz rcl-interfaces rclpy ros2cli ros2node ros2param rosidl-runtime-py ];

  meta = {
    description = "The ROS 2 command line tools for ROS2 Control.";
    license = with lib.licenses; [ asl20 ];
  };
}
