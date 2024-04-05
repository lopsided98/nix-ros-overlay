
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python-qt-binding, pythonPackages, rclpy, ros2topic, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-topic";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/rolling/rqt_topic/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "c330982cfc2014aa2ccd663a9f932c0f73efea41a4859adcc524b58a82257738";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python-qt-binding rclpy ros2topic rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.";
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
