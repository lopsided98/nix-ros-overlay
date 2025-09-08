
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, controller-manager-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-jazzy-ros2controlcli";
  version = "4.32.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/ros2controlcli/4.32.0-1.tar.gz";
    name = "4.32.0-1.tar.gz";
    sha256 = "07a992e1961b0a6d8939b5bbf5de571840c93bbde5c6c3ea1a6f9e63e9a2f680";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager controller-manager-msgs python3Packages.pygraphviz rcl-interfaces rclpy ros2cli ros2node ros2param rosidl-runtime-py ];

  meta = {
    description = "The ROS 2 command line tools for ros2_control.";
    license = with lib.licenses; [ asl20 ];
  };
}
