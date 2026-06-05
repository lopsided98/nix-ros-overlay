
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, geometry-msgs, python-qt-binding, python3Packages, rclpy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-rolling-rqt-robot-steering";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_robot_steering-release/archive/release/rolling/rqt_robot_steering/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "dbefab5180d6d1843461e39e1f5fdbf8cc68f53605601dc05ccac0d949b48442";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs python-qt-binding rclpy rqt-gui rqt-gui-py ];

  meta = {
    description = "rqt_robot_steering provides a GUI plugin for steering a robot using Twist messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
