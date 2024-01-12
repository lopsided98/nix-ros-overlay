
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rcl-interfaces, rclpy, ros2action, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-iron-system-fingerprint";
  version = "0.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_system_fingerprint-release/archive/release/iron/system_fingerprint/0.7.0-3.tar.gz";
    name = "0.7.0-3.tar.gz";
    sha256 = "ec24cb7963bf8d674ba6a4d18c353bed5d241d8c63e4b3617afd11fc3bef7421";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.GitPython rcl-interfaces rclpy ros2action ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = ''The system_fingerprint package'';
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
