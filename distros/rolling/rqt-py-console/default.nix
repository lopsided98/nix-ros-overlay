
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-py-console";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_py_console-release/archive/release/rolling/rqt_py_console/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "9394a589e9bb177a20bb340853caa15d9f5d461931787718af628e42c4fe6222";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python-qt-binding qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_py_console is a Python GUI plugin providing an interactive Python console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
