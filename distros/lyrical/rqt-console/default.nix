
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python-qt-binding, python3Packages, rcl-interfaces, rclpy, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-lyrical-rqt-console";
  version = "2.4.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_console-release/archive/release/lyrical/rqt_console/2.4.3-3.tar.gz";
    name = "2.4.3-3.tar.gz";
    sha256 = "dca3f5684bc3c99249b4e409c1c97efea4b53a0899d23acd32dc173cb312b8b2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding rcl-interfaces rclpy rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_console provides a GUI plugin for displaying and filtering ROS messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
