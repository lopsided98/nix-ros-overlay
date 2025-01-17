
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, py-trees-js, py-trees-ros-interfaces, python3Packages, qt5, rclpy, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-py-trees-ros-viewer";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_viewer-release/archive/release/humble/py_trees_ros_viewer/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "be2ba95a1177c618a00825b73bb38d44ed03665fae16c8ff7fdcadf8b34b01b7";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ py-trees-js py-trees-ros-interfaces python3Packages.pyqt5 python3Packages.pyqtwebengine rclpy unique-identifier-msgs ];

  meta = {
    description = "A Qt-JS application for visualisation of executing/log-replayed behaviour trees in a ROS2 ecosystem.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
