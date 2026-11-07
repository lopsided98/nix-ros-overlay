
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager, controller-manager-msgs, lifecycle-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2topic, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-rolling-ros2controlcli";
  version = "6.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/ros2controlcli/6.13.0-1.tar.gz";
    name = "6.13.0-1.tar.gz";
    sha256 = "1575ae1a27b96865058b49c6912622b9b46af327c67b48eb34215602b05d3199";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ control-msgs controller-manager controller-manager-msgs lifecycle-msgs python3Packages.graphviz rcl-interfaces rclpy ros2cli ros2node ros2topic rosidl-runtime-py ];

  meta = {
    description = "The ROS 2 command line tools for ros2_control.";
    license = with lib.licenses; [ asl20 ];
  };
}
