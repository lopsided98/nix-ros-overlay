
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, rcl-interfaces, rclpy, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-console";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_console-release/archive/release/rolling/rqt_console/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "420ff7b449f82f37b6eb4e650a5c935ce3498d8c6ae7ffbfdd73bbf4b46fb40c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding rcl-interfaces rclpy rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_console provides a GUI plugin for displaying and filtering ROS messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
