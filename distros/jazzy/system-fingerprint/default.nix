
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rcl-interfaces, rclpy, ros2action, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-jazzy-system-fingerprint";
  version = "0.7.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_system_fingerprint-release/archive/release/jazzy/system_fingerprint/0.7.0-4.tar.gz";
    name = "0.7.0-4.tar.gz";
    sha256 = "9508a795987785b721259079b8044802d40de37d5b6dd845bca55e74d19e6a0a";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.GitPython rcl-interfaces rclpy ros2action ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = "The system_fingerprint package";
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
