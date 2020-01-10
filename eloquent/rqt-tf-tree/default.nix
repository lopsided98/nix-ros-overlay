
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, python-qt-binding, python3Packages, qt-dotgraph, rclpy, rqt-graph, rqt-gui, rqt-gui-py, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-eloquent-rqt-tf-tree";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_tf_tree-release/archive/release/eloquent/rqt_tf_tree/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "17b65f6ffc11ee3573c322b058e993d1c62aad6208937f6e4366f3e1292ed47b";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ geometry-msgs python-qt-binding python3Packages.rospkg qt-dotgraph rclpy rqt-graph rqt-gui rqt-gui-py tf2 tf2-msgs tf2-ros ];

  meta = {
    description = ''rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
