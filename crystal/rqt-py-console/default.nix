
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, ament-cmake, python-qt-binding, rclpy, rqt-gui, qt-gui, ament-index-python, qt-gui-py-common }:
buildRosPackage {
  pname = "ros-crystal-rqt-py-console";
  version = "1.0.0-r2";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rqt_py_console-release/archive/release/crystal/rqt_py_console/1.0.0-2.tar.gz;
    sha256 = "2797cbe4f59a613ed53201713ad7a0a3d5f3db5271bca452012500b8ab8130c6";
  };

  propagatedBuildInputs = [ rqt-gui-py rclpy rqt-gui qt-gui qt-gui-py-common ament-index-python python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_py_console is a Python GUI plugin providing an interactive Python console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
