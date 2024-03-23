
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, pythonPackages, qt-dotgraph, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-graph";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_graph-release/archive/release/rolling/rqt_graph/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "6e5813accdbc80583a086a3a6910035076b98b9e028dbb789cf3a22c58b65d36";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding qt-dotgraph rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_graph provides a GUI plugin for visualizing the ROS
      computation graph.<br/>
      Its components are made generic so that other packages
      where you want to achieve graph representation can depend upon this pkg
      (use <a href=\"http://www.ros.org/wiki/rqt_dep\">rqt_dep</a> to find out
      the pkgs that depend. rqt_dep itself depends on rqt_graph too).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
