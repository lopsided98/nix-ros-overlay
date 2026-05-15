
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python-qt-bindings-deps, python3Packages, qt-dotgraph, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-lyrical-rqt-graph";
  version = "1.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_graph-release/archive/release/lyrical/rqt_graph/1.8.3-1.tar.gz";
    name = "1.8.3-1.tar.gz";
    sha256 = "97674645162965a97bf0df3df0f6a842aa1be089503731f2d866a0eb309de91f";
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
