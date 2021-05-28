
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-galactic-rqt-py-console";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_py_console-release/archive/release/galactic/rqt_py_console/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "30ff0a1ae2ad66f7b47ea1e5c2c54525a76e2b88abf83f087e98274750640a1d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python-qt-binding qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_py_console is a Python GUI plugin providing an interactive Python console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
