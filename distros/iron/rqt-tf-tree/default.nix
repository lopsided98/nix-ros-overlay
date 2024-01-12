
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python-qt-binding, python3Packages, qt-dotgraph, rclpy, rqt-graph, rqt-gui, rqt-gui-py, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-rqt-tf-tree";
  version = "1.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_tf_tree-release/archive/release/iron/rqt_tf_tree/1.0.4-3.tar.gz";
    name = "1.0.4-3.tar.gz";
    sha256 = "8666e3aa9f47cb6f35095574b9a1a50f16156e7433e300e44ef2ccd9e3d2a963";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python-qt-binding qt-dotgraph rclpy rqt-graph rqt-gui rqt-gui-py tf2-msgs tf2-ros ];

  meta = {
    description = ''rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
