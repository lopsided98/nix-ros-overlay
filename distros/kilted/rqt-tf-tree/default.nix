
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, python-qt-binding, python3Packages, qt-dotgraph, rclpy, rqt-graph, rqt-gui, rqt-gui-py, tf2-msgs, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-kilted-rqt-tf-tree";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_tf_tree-release/archive/release/kilted/rqt_tf_tree/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "cd6d9fd85aa06c27ab1eba6ecb2cd6978cab890b051562498e86d716e7658d1a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.mock python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-dotgraph rclpy rqt-graph rqt-gui rqt-gui-py tf2-msgs tf2-ros tf2-ros-py ];

  meta = {
    description = "rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
