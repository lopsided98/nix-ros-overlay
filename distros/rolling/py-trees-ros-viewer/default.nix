
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, py-trees-js, py-trees-ros-interfaces, python3Packages, qt5, rclpy, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-py-trees-ros-viewer";
  version = "0.2.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_viewer-release/archive/release/rolling/py_trees_ros_viewer/0.2.5-3.tar.gz";
    name = "0.2.5-3.tar.gz";
    sha256 = "782ed939222c84118004a5ac1eeba40461e8d757cef6accdfe70ceaf1a54218b";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ py-trees-js py-trees-ros-interfaces python3Packages.pyqt5 python3Packages.pyqtwebengine rclpy unique-identifier-msgs ];

  meta = {
    description = "A Qt-JS application for visualisation of executing/log-replayed behaviour trees in a ROS2 ecosystem.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
