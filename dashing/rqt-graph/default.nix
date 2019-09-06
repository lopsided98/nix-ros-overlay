
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, qt-dotgraph, ament-index-python, python-qt-binding }:
buildRosPackage {
  pname = "ros-dashing-rqt-graph";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_graph-release/archive/release/dashing/rqt_graph/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f86747fbb9735d8381baa0c971b1b01e89c32b8b96649e0b362558fe6551e882";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui-py rqt-gui qt-dotgraph ament-index-python python-qt-binding ];

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
