
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, pythonPackages, rqt-graph, qt-gui, qt-dotgraph, qt-gui-py-common, python-qt-binding }:
buildRosPackage {
  pname = "ros-kinetic-rqt-dep";
  version = "0.4.9";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_dep-release/archive/release/kinetic/rqt_dep/0.4.9-0.tar.gz;
    sha256 = "40214d71f91d89cf1ce56776061ab7c78834a8783da1fa294736555c55c610ca";
  };

  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ rqt-gui-py qt-gui qt-dotgraph qt-gui-py-common python-qt-binding pythonPackages.rospkg rqt-graph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_dep provides a GUI plugin for visualizing the ROS dependency graph.'';
    #license = lib.licenses.BSD;
  };
}
