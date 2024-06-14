
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, graphviz, python3Packages, rclpy, tf2-msgs, tf2-py, tf2-ros-py }:
buildRosPackage {
  pname = "ros-iron-tf2-tools";
  version = "0.31.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/iron/tf2_tools/0.31.7-1.tar.gz";
    name = "0.31.7-1.tar.gz";
    sha256 = "6fbe27c0cc48eec3f4610913ae3fd30dc23477fbf158de024099567b0c8a16a7";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ graphviz python3Packages.pyyaml rclpy tf2-msgs tf2-py tf2-ros-py ];

  meta = {
    description = "tf2_tools";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
