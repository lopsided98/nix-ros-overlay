
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui, rclpy }:
buildRosPackage {
  pname = "ros-rolling-rqt-gui";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_gui/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "5d870773a684e584b2542fdaa3574c08bebfce83d51a9f0ea1517a118e4b0bf8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding python3Packages.catkin-pkg qt-gui rclpy ];

  meta = {
    description = "rqt_gui provides the main to start an instance of the ROS integrated graphical user interface provided by qt_gui.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
