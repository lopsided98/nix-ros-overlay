
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, geometry-msgs, python-qt-binding, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-kilted-rqt-robot-steering";
  version = "1.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_robot_steering-release/archive/release/kilted/rqt_robot_steering/1.0.1-3.tar.gz";
    name = "1.0.1-3.tar.gz";
    sha256 = "fc019a9293d47ae14266fe5872296d54083f6340a6c134685fed862abd92273f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python geometry-msgs python-qt-binding rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
