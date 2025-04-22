
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-dotgraph, qt-gui, qt-gui-py-common, rqt-graph, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-dep";
  version = "0.4.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_dep-release/archive/release/noetic/rqt_dep/0.4.13-1.tar.gz";
    name = "0.4.13-1.tar.gz";
    sha256 = "aaa895456e4924a03f73120be8f4346df822c08e5f3a69a7bb0abf87cb22636a";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ python3Packages.mock ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg qt-dotgraph qt-gui qt-gui-py-common rqt-graph rqt-gui-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_dep provides a GUI plugin for visualizing the ROS dependency graph.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
