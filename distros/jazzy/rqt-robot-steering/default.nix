
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, geometry-msgs, python-qt-binding, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-jazzy-rqt-robot-steering";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_robot_steering-release/archive/release/jazzy/rqt_robot_steering/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "3e3c1e801dd7fe95b1e92e53cc31ff04796b5a308ab23bc1e540715cf7cad695";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python geometry-msgs python-qt-binding rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
