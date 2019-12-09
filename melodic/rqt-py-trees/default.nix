
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, geometry-msgs, unique-id, catkin, pythonPackages, py-trees, py-trees-msgs, rqt-gui-py, rqt-graph, qt-dotgraph, rospy, rqt-bag }:
buildRosPackage {
  pname = "ros-melodic-rqt-py-trees";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/stonier/rqt_py_trees-release/archive/release/melodic/rqt_py_trees/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "f01bb9ccb08d23b79f515c9fe65342463911d1af5c2cffec32c33845817b934f";
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
