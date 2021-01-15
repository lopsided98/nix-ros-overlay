
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, py-trees, py-trees-msgs, pythonPackages, qt-dotgraph, rospy, rqt-bag, rqt-graph, rqt-gui, rqt-gui-py, unique-id }:
buildRosPackage {
  pname = "ros-kinetic-rqt-py-trees";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/stonier/rqt_py_trees-release/archive/release/kinetic/rqt_py_trees/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "ca85b85d9e28d0276387e15c30811b0eb974f06bafb6290ed6db74c9f79825bb";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ geometry-msgs py-trees py-trees-msgs pythonPackages.pygraphviz pythonPackages.rospkg pythonPackages.termcolor qt-dotgraph rospy rqt-bag rqt-graph rqt-gui rqt-gui-py unique-id ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_py_trees provides a GUI plugin for visualizing py_trees behaviour trees based on rqt_tf_tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
