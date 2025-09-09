
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, qt-dotgraph, qt-gui, qt-gui-py-common, rqt-graph, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-dep";
  version = "0.4.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_dep-release/archive/release/noetic/rqt_dep/0.4.14-1.tar.gz";
    name = "0.4.14-1.tar.gz";
    sha256 = "87cedb18a36c85ca20ed803500c30fbc9b2c8402dc09af27d862385e9cd2335b";
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
