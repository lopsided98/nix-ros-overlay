
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, qt-dotgraph, rclpy, rqt-graph, rqt-gui, rqt-gui-py, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-rqt-tf-tree";
  version = "1.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_tf_tree-release/archive/release/kilted/rqt_tf_tree/1.0.5-2.tar.gz";
    name = "1.0.5-2.tar.gz";
    sha256 = "1dca394070580ff73ccfaca7949ca3a03d86497ee615e8f8eeee616a48e6d961";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.mock python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-dotgraph rclpy rqt-graph rqt-gui rqt-gui-py tf2-msgs tf2-ros ];

  meta = {
    description = "rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
