
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python-qt-binding, pythonPackages, rclpy, ros2topic, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-topic";
  version = "1.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/rolling/rqt_topic/1.7.1-1.tar.gz";
    name = "1.7.1-1.tar.gz";
    sha256 = "302cc958c1b2c2961731f0e489d9adb477911ece6ab848fbf094a4739df14ff8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python-qt-binding rclpy ros2topic rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
