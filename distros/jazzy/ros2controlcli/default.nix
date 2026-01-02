
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, controller-manager-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-jazzy-ros2controlcli";
  version = "4.42.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/ros2controlcli/4.42.1-1.tar.gz";
    name = "4.42.1-1.tar.gz";
    sha256 = "bfc3209d5b9e95b3369d8bc863dc6719306a9cfde92e44e3c2cbb39d0122a81e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager controller-manager-msgs python3Packages.pygraphviz rcl-interfaces rclpy ros2cli ros2node ros2param rosidl-runtime-py ];

  meta = {
    description = "The ROS 2 command line tools for ros2_control.";
    license = with lib.licenses; [ asl20 ];
  };
}
