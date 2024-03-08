
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, pythonPackages, rcl-interfaces, rclpy, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-console";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_console-release/archive/release/rolling/rqt_console/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "591f02e9f3869efa71fd6b2e3e11aa50245440043f12218f66b2691fe31f76c5";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python-qt-binding rcl-interfaces rclpy rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
