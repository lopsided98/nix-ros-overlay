
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, qt-dotgraph, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-graph";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_graph-release/archive/release/rolling/rqt_graph/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "7abf7fb251aea08ee8b3d8106db41869a283b790a0a6dfa9c91d49568c5ddfa7";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python-qt-binding qt-dotgraph rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_graph provides a GUI plugin for visualizing the ROS
      computation graph.<br/>
      Its components are made generic so that other packages
      where you want to achieve graph representation can depend upon this pkg
      (use <a href="http://www.ros.org/wiki/rqt_dep">rqt_dep</a> to find out
      the pkgs that depend. rqt_dep itself depends on rqt_graph too).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
