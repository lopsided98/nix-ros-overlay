
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, py-trees, py-trees-msgs, python3Packages, qt-dotgraph, rospy, rqt-bag, rqt-graph, rqt-gui, rqt-gui-py, unique-id }:
buildRosPackage {
  pname = "ros-noetic-rqt-py-trees";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/stonier/rqt_py_trees-release/archive/release/noetic/rqt_py_trees/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "78101685d5cb8d67ab3ba9a7a263d297b64e52b0fe81bc7ab2182167a05e2408";
  };

  buildType = "catkin";
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ geometry-msgs py-trees py-trees-msgs python3Packages.pygraphviz python3Packages.rospkg python3Packages.termcolor qt-dotgraph rospy rqt-bag rqt-graph rqt-gui rqt-gui-py unique-id ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_py_trees provides a GUI plugin for visualizing py_trees behaviour trees based on rqt_tf_tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
