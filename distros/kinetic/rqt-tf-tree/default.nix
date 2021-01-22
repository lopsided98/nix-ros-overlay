
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python-qt-binding, pythonPackages, qt-dotgraph, rospy, rqt-graph, rqt-gui, rqt-gui-py, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-rqt-tf-tree";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_tf_tree-release/archive/release/kinetic/rqt_tf_tree/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "5858a7b99a235833530aae4de167762f1127913d4b8859d1106df3cf7976d690";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ geometry-msgs python-qt-binding pythonPackages.rospkg qt-dotgraph rospy rqt-graph rqt-gui rqt-gui-py tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
