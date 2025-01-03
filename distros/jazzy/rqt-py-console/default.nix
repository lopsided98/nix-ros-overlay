
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-jazzy-rqt-py-console";
  version = "1.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_py_console-release/archive/release/jazzy/rqt_py_console/1.2.2-3.tar.gz";
    name = "1.2.2-3.tar.gz";
    sha256 = "c1e29bb4095fe4fb6b0213b629b7b39a4f914f6a267e1ef60cdfc2b1c32039c7";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_py_console is a Python GUI plugin providing an interactive Python console.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
