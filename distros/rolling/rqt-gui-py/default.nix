
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui }:
buildRosPackage {
  pname = "ros-rolling-rqt-gui-py";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/rolling/rqt_gui_py/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "57a64a90c905335a04264893300e80d48768eaff36066e57bbd86e224efa64bc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-gui rclpy rqt-gui ];

  meta = {
    description = "rqt_gui_py enables GUI plugins to use the Python client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
