
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, unique-id, py-trees-msgs, rqt-gui, pythonPackages, rqt-graph, rqt-bag, catkin, qt-dotgraph, rospy, geometry-msgs, py-trees }:
buildRosPackage {
  pname = "ros-melodic-rqt-py-trees";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/stonier/rqt_py_trees-release/archive/release/melodic/rqt_py_trees/0.3.1-0.tar.gz;
    sha256 = "f01bb9ccb08d23b79f515c9fe65342463911d1af5c2cffec32c33845817b934f";
  };

  buildInputs = [ py-trees-msgs rqt-bag py-trees ];
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ rqt-gui-py unique-id pythonPackages.termcolor pythonPackages.rospkg rqt-gui rqt-graph py-trees-msgs rqt-bag pythonPackages.pygraphviz qt-dotgraph rospy geometry-msgs py-trees ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_py_trees provides a GUI plugin for visualizing py_trees behaviour trees based on rqt_tf_tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
