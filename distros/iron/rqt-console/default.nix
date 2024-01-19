
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, python-qt-binding, rcl-interfaces, rclpy, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-iron-rqt-console";
  version = "2.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_console-release/archive/release/iron/rqt_console/2.1.1-3.tar.gz";
    name = "2.1.1-3.tar.gz";
    sha256 = "608a31eab452918d7be700c704641811ff7d69b32a5ce7ec9c412066a64dd48d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python python-qt-binding rcl-interfaces rclpy rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_console provides a GUI plugin for displaying and filtering ROS messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
