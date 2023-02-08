
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt-dotgraph, qt-gui, qt-gui-py-common, rqt-graph, rqt-gui-py }:
buildRosPackage {
  pname = "ros-melodic-rqt-dep";
  version = "0.4.9";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rqt_dep-release";
        rev = "release/melodic/rqt_dep/0.4.9-0";
        sha256 = "sha256-KASqCpZ0CfTB3k4XyL7b52fKUhhPYJP5LhA9B/nYeHE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg qt-dotgraph qt-gui qt-gui-py-common rqt-graph rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_dep provides a GUI plugin for visualizing the ROS dependency graph.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
