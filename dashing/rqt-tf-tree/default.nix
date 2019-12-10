
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, python-qt-binding, python3Packages, qt-dotgraph, rclpy, rqt-graph, rqt-gui, rqt-gui-py, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-rqt-tf-tree";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_tf_tree-release/archive/release/dashing/rqt_tf_tree/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "6fe7975f054b143421ec4bf0fbbbfbf2f53aeb27d12e3802532a3b4e2d75b8a7";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ geometry-msgs python-qt-binding python3Packages.rospkg qt-dotgraph rclpy rqt-graph rqt-gui rqt-gui-py tf2 tf2-msgs tf2-ros ];

  meta = {
    description = ''rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
