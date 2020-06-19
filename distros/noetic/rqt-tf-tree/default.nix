
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt-dotgraph, rospy, rqt-graph, rqt-gui, rqt-gui-py, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-rqt-tf-tree";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_tf_tree-release/archive/release/noetic/rqt_tf_tree/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "e1652831152be7540779724aa2882dc7bbd3bd6ccbda58c99a8710cef889eeaf";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg qt-dotgraph rospy rqt-graph rqt-gui rqt-gui-py tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
