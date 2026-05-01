
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-lyrical-rqt-py-console";
  version = "1.5.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_py_console-release/archive/release/lyrical/rqt_py_console/1.5.2-4.tar.gz";
    name = "1.5.2-4.tar.gz";
    sha256 = "f41a15fd9033b9d0b5e3a287e36d0b907f85d1597f7c354598a2be19adeb8adb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_py_console is a Python GUI plugin providing an interactive Python console.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
