
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, py-trees, py-trees-msgs, pythonPackages, qt-dotgraph, rospy, rqt-bag, rqt-graph, rqt-gui, rqt-gui-py, unique-id }:
buildRosPackage {
  pname = "ros-melodic-rqt-py-trees";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/stonier/rqt_py_trees-release/archive/release/melodic/rqt_py_trees/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "f01bb9ccb08d23b79f515c9fe65342463911d1af5c2cffec32c33845817b934f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ geometry-msgs py-trees py-trees-msgs pythonPackages.pygraphviz pythonPackages.rospkg pythonPackages.termcolor qt-dotgraph rospy rqt-bag rqt-graph rqt-gui rqt-gui-py unique-id ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_py_trees provides a GUI plugin for visualizing py_trees behaviour trees based on rqt_tf_tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
