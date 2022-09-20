
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-foxy-system-fingerprint";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots/ros_system_fingerprint-release/archive/release/foxy/system_fingerprint/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "0f1e0938af5f0702e96c1f6bc8c93997ea6e1f15d81e388ebfc2a0377f4d3c32";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.GitPython rcl-interfaces rclpy ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = ''The system_fingerprint package'';
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
