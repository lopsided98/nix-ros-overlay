
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-tf-tree-terminal";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_tree_terminal-release/archive/release/rolling/tf_tree_terminal/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "131b9124228b228a77e03f1105ee5d87b1c4543165f464c4b0a0061202bb0d94";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyyaml rclpy tf2-ros ];

  meta = {
    description = "A lightweight ROS 2 utility to visualize the Coordinate Transform (TF) tree directly in the terminal with a folder-style structure.";
    license = with lib.licenses; [ mit ];
  };
}
