
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-humble-system-fingerprint";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots/ros_system_fingerprint-release/archive/release/humble/system_fingerprint/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "4c0a5bb24d5061a904bbf84cbf58b031e04195c19d7894ffbc83d95f21251cd1";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.GitPython rcl-interfaces rclpy ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = ''The system_fingerprint package'';
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
