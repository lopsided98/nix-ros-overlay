
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, geometry-msgs, python-qt-binding, python3Packages, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-robot-steering";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_robot_steering-release/archive/release/rolling/rqt_robot_steering/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "29f27c4e43d0440626157a95fad48d50ba69a3177cb10a289b76bd7477d5f9a9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs python-qt-binding rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
