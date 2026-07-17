
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python-qt-bindings-deps, python3Packages, qt-dotgraph, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-graph";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_graph-release/archive/release/rolling/rqt_graph/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "b1613f1bb6859f2d71fed96f93f9d2b5c108f000c5b47dccd2926c9b7cd7d803";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python-qt-bindings-deps qt-dotgraph rclpy rqt-gui rqt-gui-py ];

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
