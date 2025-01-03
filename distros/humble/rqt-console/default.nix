
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, rcl-interfaces, rclpy, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-humble-rqt-console";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_console-release/archive/release/humble/rqt_console/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "f330714fa12a6896a6696d20db3d34c1963f1309e66d1679bb043fc45ad22270";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python-qt-binding rcl-interfaces rclpy rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_console provides a GUI plugin for displaying and filtering ROS messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
