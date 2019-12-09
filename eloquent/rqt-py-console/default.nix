
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, qt-gui-py-common, ament-cmake, rqt-gui-py, qt-gui, rclpy, ament-index-python, python-qt-binding }:
buildRosPackage {
  pname = "ros-eloquent-rqt-py-console";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_py_console-release/archive/release/eloquent/rqt_py_console/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "82e07cd6f84d57cad4b4437ed2af3efdad7bd6a5f852780977925933e6da037f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui qt-gui-py-common rqt-gui-py qt-gui rclpy ament-index-python python-qt-binding ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_py_console is a Python GUI plugin providing an interactive Python console.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
