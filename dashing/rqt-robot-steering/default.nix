
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, geometry-msgs, rqt-gui-py, rclpy, ament-index-python, python-qt-binding }:
buildRosPackage {
  pname = "ros-dashing-rqt-robot-steering";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_robot_steering-release/archive/release/dashing/rqt_robot_steering/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d35e30c90083aacf10adb112f21fefe4487f9bddc3b5b8100afc9672e67cd1d8";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui geometry-msgs rqt-gui-py rclpy ament-index-python python-qt-binding ];

  meta = {
    description = ''rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
