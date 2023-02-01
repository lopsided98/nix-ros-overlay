
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, py-trees, py-trees-msgs, pythonPackages, qt-dotgraph, rospy, rqt-bag, rqt-graph, rqt-gui, rqt-gui-py, unique-id }:
buildRosPackage {
  pname = "ros-melodic-rqt-py-trees";
  version = "0.3.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "stonier";
        repo = "rqt_py_trees-release";
        rev = "release/melodic/rqt_py_trees/0.3.1-0";
        sha256 = "sha256-/wNWtcaqa75ru27P1Wb/RAEeugk5M0Ayg40bqt+DEMU=";
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
