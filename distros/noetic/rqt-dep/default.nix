
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-dotgraph, qt-gui, qt-gui-py-common, rqt-graph, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-dep";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_dep-release/archive/release/noetic/rqt_dep/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "ae71c5531c73809ccf544bba2899cbd2d916deccd75e03689479d2b1d0d0b72d";
  };

  buildType = "catkin";
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg qt-dotgraph qt-gui qt-gui-py-common rqt-graph rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_dep provides a GUI plugin for visualizing the ROS dependency graph.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
