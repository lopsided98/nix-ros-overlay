
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, rcl-interfaces, rclpy, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-humble-rqt-console";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_console-release/archive/release/humble/rqt_console/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "06759f530a897cb663e7d7648843466bfb775dc8bdd2f86adf727c1b46b6c760";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python-qt-binding rcl-interfaces rclpy rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
