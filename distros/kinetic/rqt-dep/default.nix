
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, qt-dotgraph, qt-gui, qt-gui-py-common, rqt-graph, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kinetic-rqt-dep";
  version = "0.4.9";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_dep-release/archive/release/kinetic/rqt_dep/0.4.9-0.tar.gz";
    name = "0.4.9-0.tar.gz";
    sha256 = "40214d71f91d89cf1ce56776061ab7c78834a8783da1fa294736555c55c610ca";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg qt-dotgraph qt-gui qt-gui-py-common rqt-graph rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_dep provides a GUI plugin for visualizing the ROS dependency graph.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
