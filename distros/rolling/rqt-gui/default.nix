
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui, rclpy }:
buildRosPackage {
  pname = "ros-rolling-rqt-gui";
  version = "1.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_gui/1.10.0-1.tar.gz";
    name = "1.10.0-1.tar.gz";
    sha256 = "0a43270e3557a82f174c374fd3f06be63ec825cfe030dec680d996babc36cf60";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg qt-gui rclpy ];

  meta = {
    description = "rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
