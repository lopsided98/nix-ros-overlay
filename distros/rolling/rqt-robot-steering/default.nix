
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, geometry-msgs, python-qt-binding, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-robot-steering";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_robot_steering-release/archive/release/rolling/rqt_robot_steering/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "6e0134f0f1456e6048d50682efb2cb1c9a5ee9ec4875b8c621ae2d40c26e095d";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python geometry-msgs python-qt-binding rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = ''rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
