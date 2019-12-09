
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, geometry-msgs, unique-id, catkin, pythonPackages, py-trees, py-trees-msgs, rqt-gui-py, rqt-graph, qt-dotgraph, rospy, rqt-bag }:
buildRosPackage {
  pname = "ros-kinetic-rqt-py-trees";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/stonier/rqt_py_trees-release/archive/release/kinetic/rqt_py_trees/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "ca85b85d9e28d0276387e15c30811b0eb974f06bafb6290ed6db74c9f79825bb";
  };

  buildType = "catkin";
  buildInputs = [ py-trees py-trees-msgs rqt-bag ];
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ pythonPackages.termcolor rqt-gui geometry-msgs unique-id pythonPackages.rospkg py-trees-msgs py-trees rqt-gui-py rqt-graph qt-dotgraph pythonPackages.pygraphviz rospy rqt-bag ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_py_trees provides a GUI plugin for visualizing py_trees behaviour trees based on rqt_tf_tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
