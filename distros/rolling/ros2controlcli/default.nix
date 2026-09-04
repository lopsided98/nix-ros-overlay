
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager, controller-manager-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-rolling-ros2controlcli";
  version = "6.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/ros2controlcli/6.10.0-1.tar.gz";
    name = "6.10.0-1.tar.gz";
    sha256 = "42cf3b1983141f2a5d22c1dc10ab94be32432ac908378e921220c582aaecb7c1";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ control-msgs controller-manager controller-manager-msgs python3Packages.graphviz rcl-interfaces rclpy ros2cli ros2node ros2param rosidl-runtime-py ];

  meta = {
    description = "The ROS 2 command line tools for ros2_control.";
    license = with lib.licenses; [ asl20 ];
  };
}
