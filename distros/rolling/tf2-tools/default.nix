
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, graphviz, python3Packages, rclpy, tf2-msgs, tf2-py, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-tf2-tools";
  version = "0.32.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/tf2_tools/0.32.0-1.tar.gz";
    name = "0.32.0-1.tar.gz";
    sha256 = "eda598ed9543b887cd443ac782f700c237786b396d624dc151420f7c0afa5a04";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ graphviz python3Packages.pyyaml rclpy tf2-msgs tf2-py tf2-ros-py ];

  meta = {
    description = ''tf2_tools'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
