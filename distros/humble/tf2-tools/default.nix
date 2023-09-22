
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, graphviz, python3Packages, rclpy, tf2-msgs, tf2-py, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-tf2-tools";
  version = "0.25.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_tools/0.25.4-1.tar.gz";
    name = "0.25.4-1.tar.gz";
    sha256 = "ac4e92b08ed2b26e73c8a3512028de8b46e5e267dc7595bb4b25f7edad0c5814";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ graphviz python3Packages.pyyaml rclpy tf2-msgs tf2-py tf2-ros-py ];

  meta = {
    description = ''tf2_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
