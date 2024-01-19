
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, py-trees, py-trees-msgs, python3Packages, qt-dotgraph, rospy, rqt-bag, rqt-graph, rqt-gui, rqt-gui-py, unique-id }:
buildRosPackage {
  pname = "ros-noetic-rqt-py-trees";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/stonier/rqt_py_trees-release/archive/release/noetic/rqt_py_trees/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "4a243cfcf715beaf4d54717872166e67638d4da8530c1eeda1d78e6046619a79";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ geometry-msgs py-trees py-trees-msgs python3Packages.pygraphviz python3Packages.rospkg python3Packages.termcolor qt-dotgraph rospy rqt-bag rqt-graph rqt-gui rqt-gui-py unique-id ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_py_trees provides a GUI plugin for visualizing py_trees behaviour trees based on rqt_tf_tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
