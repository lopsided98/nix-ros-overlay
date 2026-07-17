
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, python-qt-binding, python3Packages, qt-dotgraph, rclpy, rqt-graph, rqt-gui, rqt-gui-py, tf2-msgs, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-rqt-tf-tree";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_tf_tree-release/archive/release/jazzy/rqt_tf_tree/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "c8e998304851a301d790cf3dd420f808f2f34e20b0323dd6c908c04d15107e5a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.mock python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-dotgraph rclpy rqt-graph rqt-gui rqt-gui-py tf2-msgs tf2-ros tf2-ros-py ];

  meta = {
    description = "rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
