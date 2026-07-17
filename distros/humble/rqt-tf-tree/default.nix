
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-pep257, python-qt-binding, python3Packages, qt-dotgraph, rclpy, rqt-graph, rqt-gui, rqt-gui-py, tf2-msgs, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-rqt-tf-tree";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_tf_tree-release/archive/release/humble/rqt_tf_tree/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "26818e82f22cbbf216885f6c044515b7274ac34522c29ad4e6dd3bb9a8cba34e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-pep257 python3Packages.mock python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-dotgraph rclpy rqt-graph rqt-gui rqt-gui-py tf2-msgs tf2-ros tf2-ros-py ];

  meta = {
    description = "rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
