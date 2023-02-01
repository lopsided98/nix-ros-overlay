
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python-qt-binding, pythonPackages, qt-dotgraph, rospy, rqt-graph, rqt-gui, rqt-gui-py, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rqt-tf-tree";
  version = "0.6.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rqt_tf_tree-release";
        rev = "release/melodic/rqt_tf_tree/0.6.0-0";
        sha256 = "sha256-jd6rCCqHIt2BU9tygcvV/SkrvS5b4bRgYkTKzEQb0k8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ geometry-msgs python-qt-binding pythonPackages.rospkg qt-dotgraph rospy rqt-graph rqt-gui rqt-gui-py tf2 tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_tf_tree provides a GUI plugin for visualizing the ROS TF frame tree.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
