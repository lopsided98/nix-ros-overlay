
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, unique-id, rqt-gui, pythonPackages, rqt-graph, py-trees-msgs, rqt-bag, catkin, qt-dotgraph, rospy, geometry-msgs, py-trees }:
buildRosPackage {
  pname = "ros-kinetic-rqt-py-trees";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/stonier/rqt_py_trees-release/archive/release/kinetic/rqt_py_trees/0.3.1-0.tar.gz;
    sha256 = "ca85b85d9e28d0276387e15c30811b0eb974f06bafb6290ed6db74c9f79825bb";
  };

  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ rqt-gui-py unique-id pythonPackages.termcolor pythonPackages.rospkg rqt-gui rqt-graph py-trees-msgs rqt-bag pythonPackages.pygraphviz qt-dotgraph rospy geometry-msgs py-trees ];
  nativeBuildInputs = [ catkin py-trees-msgs rqt-bag py-trees ];

  meta = {
    description = ''rqt_py_trees provides a GUI plugin for visualizing py_trees behaviour trees based on rqt_tf_tree.'';
    #license = lib.licenses.BSD;
  };
}
