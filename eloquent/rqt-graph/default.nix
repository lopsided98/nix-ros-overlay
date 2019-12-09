
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, rqt-gui-py, qt-dotgraph, ament-index-python, python-qt-binding }:
buildRosPackage {
  pname = "ros-eloquent-rqt-graph";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_graph-release/archive/release/eloquent/rqt_graph/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "74571af6b3c8edb0cef067fc8d9a4079eff16e3bde461fc83dc3f1eefce60a98";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui rqt-gui-py qt-dotgraph ament-index-python python-qt-binding ];

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
