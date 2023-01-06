
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rcl-interfaces, rclpy, ros2action, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-rolling-system-fingerprint";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots/ros_system_fingerprint-release/archive/release/rolling/system_fingerprint/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "ebb0db783c2b5bce842577ba9ead1c06f7391863d9990c74e0a3447936605950";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.GitPython rcl-interfaces rclpy ros2action ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = ''The system_fingerprint package'';
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
