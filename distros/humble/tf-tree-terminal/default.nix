
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-tf-tree-terminal";
  version = "2.0.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf_tree_terminal-release/archive/release/humble/tf_tree_terminal/2.0.0-7.tar.gz";
    name = "2.0.0-7.tar.gz";
    sha256 = "7086900b15f2e428b2dbfbac1c83cc4c7200f1e263e5c73e4b83800026d0bd8e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.pyyaml rclpy tf2-ros ];

  meta = {
    description = "A lightweight ROS 2 utility to visualize the Coordinate Transform (TF) tree directly in the terminal with a folder-style structure.";
    license = with lib.licenses; [ mit ];
  };
}
