
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, qt-dotgraph, rclpy, rqt-graph, rqt-gui, rqt-gui-py, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-rqt-tf-tree";
  version = "1.0.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_tf_tree-release/archive/release/lyrical/rqt_tf_tree/1.0.6-3.tar.gz";
    name = "1.0.6-3.tar.gz";
    sha256 = "42c9b8a020b4ece754eda44cf3d48adddd4d78386ebc8396542b3dab62ae7847";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.mock python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-dotgraph rclpy rqt-graph rqt-gui rqt-gui-py tf2-msgs tf2-ros ];

  meta = {
    description = "rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
