
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, qt-dotgraph, rclpy, rqt-graph, rqt-gui, rqt-gui-py, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-rqt-tf-tree";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_tf_tree-release/archive/release/jazzy/rqt_tf_tree/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "4ec77721121ca18f4346ca5875cb2f9e8b87efd6998ceff99f7b9ec1d9f8e207";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.mock python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-dotgraph rclpy rqt-graph rqt-gui rqt-gui-py tf2-msgs tf2-ros ];

  meta = {
    description = "rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
