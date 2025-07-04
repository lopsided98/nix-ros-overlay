
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, qt-gui, qt-gui-py-common, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kilted-rqt-py-console";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_py_console-release/archive/release/kilted/rqt_py_console/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "9c145a1379f161e8ffeb02a5f2edca763d216d8534278afa35271bf1d240a581";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding qt-gui qt-gui-py-common rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_py_console is a Python GUI plugin providing an interactive Python console.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
