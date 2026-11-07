
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, controller-manager, controller-manager-msgs, lifecycle-msgs, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2topic, rosidl-runtime-py }:
buildRosPackage {
  pname = "ros-kilted-ros2controlcli";
  version = "5.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/kilted/ros2controlcli/5.20.0-1.tar.gz";
    name = "5.20.0-1.tar.gz";
    sha256 = "f032d939a00550eea84bae58d390ad4c434eb43215ad17d3bd9ae2b589858e96";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ control-msgs controller-manager controller-manager-msgs lifecycle-msgs python3Packages.graphviz rcl-interfaces rclpy ros2cli ros2node ros2topic rosidl-runtime-py ];

  meta = {
    description = "The ROS 2 command line tools for ros2_control.";
    license = with lib.licenses; [ asl20 ];
  };
}
