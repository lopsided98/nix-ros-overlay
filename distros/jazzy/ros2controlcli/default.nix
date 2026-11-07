
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager, controller-manager-msgs, lifecycle-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2topic, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-jazzy-ros2controlcli";
  version = "4.50.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/ros2controlcli/4.50.0-1.tar.gz";
    name = "4.50.0-1.tar.gz";
    sha256 = "693e5ed2ae2e987e3623478c6e613efaee8790995e9047e83ae7dffaa5a48461";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ control-msgs controller-manager controller-manager-msgs lifecycle-msgs python3Packages.graphviz rcl-interfaces rclpy ros2cli ros2node ros2topic rosidl-runtime-py ];

  meta = {
    description = "The ROS 2 command line tools for ros2_control.";
    license = with lib.licenses; [ asl20 ];
  };
}
