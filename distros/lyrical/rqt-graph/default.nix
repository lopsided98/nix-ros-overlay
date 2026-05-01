
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_python3-qt-bindings, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-dotgraph, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-lyrical-rqt-graph";
  version = "1.8.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_graph-release/archive/release/lyrical/rqt_graph/1.8.2-3.tar.gz";
    name = "1.8.2-3.tar.gz";
    sha256 = "e41260c5760eab6987d3e3833042594a95ad4a828bc6eaa83e3bf0a562f24659";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ _unresolved_python3-qt-bindings ament-index-python python-qt-binding qt-dotgraph rclpy rqt-gui rqt-gui-py ];

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
