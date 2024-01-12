
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rcl-interfaces, rclpy, ros2action, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-rolling-system-fingerprint";
  version = "0.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_system_fingerprint-release/archive/release/rolling/system_fingerprint/0.7.0-2.tar.gz";
    name = "0.7.0-2.tar.gz";
    sha256 = "fceb8d0ff93d774f119981eceb4d0e410f9111a651ffef22ba9eee388913f460";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.GitPython rcl-interfaces rclpy ros2action ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = ''The system_fingerprint package'';
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
