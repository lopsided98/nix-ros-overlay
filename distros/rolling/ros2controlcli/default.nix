
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager, controller-manager-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-rolling-ros2controlcli";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/ros2controlcli/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "00f0eb52526b8097fa10da6a5c8ea828156d7ae42777a47c6d1e1f0e3c0fa326";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs controller-manager controller-manager-msgs python3Packages.pygraphviz rcl-interfaces rclpy ros2cli ros2node ros2param rosidl-runtime-py ];

  meta = {
    description = "The ROS 2 command line tools for ros2_control.";
    license = with lib.licenses; [ asl20 ];
  };
}
