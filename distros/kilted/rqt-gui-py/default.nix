
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui }:
buildRosPackage {
  pname = "ros-kilted-rqt-gui-py";
  version = "1.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/kilted/rqt_gui_py/1.9.1-1.tar.gz";
    name = "1.9.1-1.tar.gz";
    sha256 = "79dcb6ab94ce44711bb0e6be9dea09819de226c3ee98ace1e769f9f79e3fe3ac";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-gui rclpy rqt-gui ];

  meta = {
    description = "rqt_gui_py enables GUI plugins to use the Python client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
