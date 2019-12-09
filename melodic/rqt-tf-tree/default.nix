
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, rqt-gui, geometry-msgs, catkin, pythonPackages, tf2, rqt-gui-py, rqt-graph, qt-dotgraph, tf2-msgs, rospy, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-tf-tree";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_tf_tree-release/archive/release/melodic/rqt_tf_tree/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "c52046ad978eb9ae418a866706d9b909646dee0f8b76deed4fa501e0894c3ee4";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ tf2-ros rqt-gui geometry-msgs tf2 pythonPackages.rospkg rqt-gui-py rqt-graph qt-dotgraph tf2-msgs rospy python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
