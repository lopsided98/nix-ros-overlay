
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-tf-tree-terminal";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_tree_terminal-release/archive/release/jazzy/tf_tree_terminal/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "5cef083a50724c1984558181eeafa3b46c9d99df6f10ba186d4449d15de1face";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyyaml rclpy tf2-ros ];

  meta = {
    description = "A lightweight ROS 2 utility to visualize the Coordinate Transform (TF) tree directly in the terminal with a folder-style structure.";
    license = with lib.licenses; [ mit ];
  };
}
