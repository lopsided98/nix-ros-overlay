
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui, rclpy, rqt-gui }:
buildRosPackage {
  pname = "ros-lyrical-rqt-gui-py";
  version = "1.10.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt-release/archive/release/lyrical/rqt_gui_py/1.10.4-3.tar.gz";
    name = "1.10.4-3.tar.gz";
    sha256 = "f0d2b3a6da4657f9e42b8e47ba258d9fb26e0b4b78bd3dad5cecadd16673a7d9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding qt-gui rclpy rqt-gui ];

  meta = {
    description = "rqt_gui_py enables GUI plugins to use the Python client library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
