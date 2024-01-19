
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-dotgraph, rospy, rqt-graph, rqt-gui, rqt-gui-py, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-rqt-tf-tree";
  version = "0.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_tf_tree-release/archive/release/noetic/rqt_tf_tree/0.6.4-1.tar.gz";
    name = "0.6.4-1.tar.gz";
    sha256 = "c2bccb3aeae478e741d7beb55a46a23eb32707db54bce2a91867ecf7eaeb4366";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg qt-dotgraph rospy rqt-graph rqt-gui rqt-gui-py tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
