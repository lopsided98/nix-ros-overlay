
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, pythonPackages, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-py-console";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_py_console-release/archive/release/rolling/rqt_py_console/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "2ec19d9ad87126a31ae292b23a10b218cd144f78ffdc9b694189001f93dd8ce3";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_py_console is a Python GUI plugin providing an interactive Python console.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
