
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-dotgraph, qt-gui, qt-gui-py-common, rqt-graph, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-dep";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_dep-release/archive/release/noetic/rqt_dep/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "a6da024e6e8455f588ec1ea3622db81a0d49c6c57592a6a0b896f353a1931715";
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
