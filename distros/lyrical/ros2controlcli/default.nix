
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager, controller-manager-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-lyrical-ros2controlcli";
  version = "6.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/lyrical/ros2controlcli/6.9.0-1.tar.gz";
    name = "6.9.0-1.tar.gz";
    sha256 = "0ba7f5d4d9607492da8340017e5b2467d6660ccd27b43380e65c7d55bbee64c4";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs controller-manager controller-manager-msgs python3Packages.pygraphviz rcl-interfaces rclpy ros2cli ros2node ros2param rosidl-runtime-py ];

  meta = {
    description = "The ROS 2 command line tools for ros2_control.";
    license = with lib.licenses; [ asl20 ];
  };
}
