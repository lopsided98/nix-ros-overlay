
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, py-trees-js, py-trees-ros-interfaces, python3Packages, qt5, rclpy, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-kilted-py-trees-ros-viewer";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_viewer-release/archive/release/kilted/py_trees_ros_viewer/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "b57b90b4ebc5847496e54d3b9fcdef8b482f9c458d3c3b8dc0640a45bfe288a7";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ py-trees-js py-trees-ros-interfaces python3Packages.pyqt5 python3Packages.pyqtwebengine rclpy unique-identifier-msgs ];

  meta = {
    description = "A Qt-JS application for visualisation of executing/log-replayed behaviour trees in a ROS2 ecosystem.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
