
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui }:
buildRosPackage {
  pname = "ros-rolling-rqt-gui-py";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_gui_py/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "6b3aa8ae7322797f21c3be69ada10e386a56da9b7c685118eb299753398b3e4a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-gui rclpy rqt-gui ];

  meta = {
    description = "rqt_gui_py enables GUI plugins to use the Python client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
