
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rcl-interfaces, rclpy, ros2action, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-rolling-system-fingerprint";
  version = "0.7.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_system_fingerprint-release/archive/release/rolling/system_fingerprint/0.7.0-4.tar.gz";
    name = "0.7.0-4.tar.gz";
    sha256 = "1b2bc7f8d1882cd454e1969e01132bada2425a4b58ea0e86c3c36b6802f9c26e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.gitpython rcl-interfaces rclpy ros2action ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = "The system_fingerprint package";
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
