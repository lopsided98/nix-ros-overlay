
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, pythonPackages, rcl-interfaces, rclpy, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt-console";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_console-release/archive/release/jazzy/rqt_console/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "035bd83cf87067e854865a9865d70030f08821d961d1db9295251037f6a32e9f";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding rcl-interfaces rclpy rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_console provides a GUI plugin for displaying and filtering ROS messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
