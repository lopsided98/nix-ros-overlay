
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, geometry-msgs, python-qt-binding, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-robot-steering";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_robot_steering-release/archive/release/rolling/rqt_robot_steering/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "f2717556db6de95df4e376466514bf84b20abe42ad3e6d6987257152f253441f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python geometry-msgs python-qt-binding rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
