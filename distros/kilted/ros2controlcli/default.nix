
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, controller-manager-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-kilted-ros2controlcli";
  version = "5.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/ros2controlcli/5.2.0-1.tar.gz";
    name = "5.2.0-1.tar.gz";
    sha256 = "93c3e7e69afcb252f8ba1d1340be826b054417c55ffb6ca738f0d2a574a21bc3";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ controller-manager controller-manager-msgs python3Packages.pygraphviz rcl-interfaces rclpy ros2cli ros2node ros2param rosidl-runtime-py ];

  meta = {
    description = "The ROS 2 command line tools for ros2_control.";
    license = with lib.licenses; [ asl20 ];
  };
}
