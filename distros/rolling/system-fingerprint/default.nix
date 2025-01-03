
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rcl-interfaces, rclpy, ros2action, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-rolling-system-fingerprint";
  version = "0.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_system_fingerprint-release/archive/release/rolling/system_fingerprint/0.7.0-3.tar.gz";
    name = "0.7.0-3.tar.gz";
    sha256 = "27a8786dc3414ec53b65f06d6c6e0cdf2c032a664978597f630efd0d3a79ff88";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.GitPython rcl-interfaces rclpy ros2action ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = "The system_fingerprint package";
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
