
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rcl-interfaces, rclpy, ros2action, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-kilted-system-fingerprint";
  version = "0.7.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_system_fingerprint-release/archive/release/kilted/system_fingerprint/0.7.0-4.tar.gz";
    name = "0.7.0-4.tar.gz";
    sha256 = "9c3ba3925e3a1201e338b5630d78a81b1e3558d6318fb76860ebb765e9e40dc8";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.GitPython rcl-interfaces rclpy ros2action ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = "The system_fingerprint package";
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
