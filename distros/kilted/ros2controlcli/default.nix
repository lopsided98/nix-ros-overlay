
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager, controller-manager-msgs, lifecycle-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2topic, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-kilted-ros2controlcli";
  version = "5.21.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/ros2controlcli/5.21.0-1.tar.gz";
    name = "5.21.0-1.tar.gz";
    sha256 = "11b72a0062af52a1ccc57e276d80b9a34d207a63896be989a8d826211903a01a";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ control-msgs controller-manager controller-manager-msgs lifecycle-msgs python3Packages.graphviz rcl-interfaces rclpy ros2cli ros2node ros2topic rosidl-runtime-py ];

  meta = {
    description = "The ROS 2 command line tools for ros2_control.";
    license = with lib.licenses; [ asl20 ];
  };
}
