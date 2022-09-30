
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rcl-interfaces, rclpy, ros2cli, ros2node, ros2param, ros2topic }:
buildRosPackage {
  pname = "ros-galactic-system-fingerprint";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots/ros_system_fingerprint-release/archive/release/galactic/system_fingerprint/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "f5cd98b5c6dffdb022f8e7476700c35ed66b22f3a8cf10d4b7bab9dab7d03a50";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.GitPython rcl-interfaces rclpy ros2cli ros2node ros2param ros2topic ];

  meta = {
    description = ''The system_fingerprint package'';
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
