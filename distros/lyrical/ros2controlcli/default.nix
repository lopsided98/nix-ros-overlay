
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager, controller-manager-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-lyrical-ros2controlcli";
  version = "6.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/lyrical/ros2controlcli/6.10.1-1.tar.gz";
    name = "6.10.1-1.tar.gz";
    sha256 = "2add2b5197ef54e23f2c5fc55663459052b80b90c8c1b76b60734c6b2605b43f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs controller-manager controller-manager-msgs python3Packages.graphviz rcl-interfaces rclpy ros2cli ros2node ros2param rosidl-runtime-py ];

  meta = {
    description = "The ROS 2 command line tools for ros2_control.";
    license = with lib.licenses; [ asl20 ];
  };
}
