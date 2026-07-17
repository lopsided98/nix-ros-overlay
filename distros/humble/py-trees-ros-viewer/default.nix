
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, py-trees-js, py-trees-ros-interfaces, python3Packages, qt5, rclpy, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-py-trees-ros-viewer";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/py_trees_ros_viewer-release/archive/release/humble/py_trees_ros_viewer/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "6b8e664456f5d90366924f9ce53b26b3e518f6709079ac5dd0e1bf4e72fb266e";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.setuptools qt5.qttools.dev ];
  propagatedBuildInputs = [ py-trees-js py-trees-ros-interfaces python3Packages.pyqt5 python3Packages.pyqtwebengine rclpy unique-identifier-msgs ];

  meta = {
    description = "A Qt-JS application for visualisation of executing/log-replayed behaviour trees in a ROS2 ecosystem.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
