
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, py-trees, py-trees-msgs, python3Packages, qt-dotgraph, rospy, rqt-bag, rqt-graph, rqt-gui, rqt-gui-py, unique-id }:
buildRosPackage {
  pname = "ros-noetic-rqt-py-trees";
  version = "0.4.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "stonier";
        repo = "rqt_py_trees-release";
        rev = "release/noetic/rqt_py_trees/0.4.1-1";
        sha256 = "sha256-YiO1UCtrfRxzegZUahIeeRchXp4WSl0/K3JQihud3Yg=";
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
