
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-humble-rqt-py-console";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_py_console-release/archive/release/humble/rqt_py_console/1.0.2-3.tar.gz";
    name = "1.0.2-3.tar.gz";
    sha256 = "a6f45c7bb2e61c6503ede1a13f2b79974e2c153e15a812cdd6790663d8d49254";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python-qt-binding qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_py_console is a Python GUI plugin providing an interactive Python console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
