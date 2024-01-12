
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, qt-dotgraph, rclpy, rqt-graph, rqt-gui, rqt-gui-py, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-rqt-tf-tree";
  version = "1.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_tf_tree-release/archive/release/rolling/rqt_tf_tree/1.0.4-2.tar.gz";
    name = "1.0.4-2.tar.gz";
    sha256 = "e6262980eee41a4af84a4b8b3f3c3d140d2256f1ae7620b4aa9f587cec495275";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python-qt-binding qt-dotgraph rclpy rqt-graph rqt-gui rqt-gui-py tf2-msgs tf2-ros ];

  meta = {
    description = ''rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
