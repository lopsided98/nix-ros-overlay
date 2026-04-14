
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-xmllint, python-qt-binding, python3Packages, rclpy, ros2topic, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-topic";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/rolling/rqt_topic/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "723627b5b45541a09d7bb115c3767d3e4177559613dbbbf05f8bd06ee2761bfb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.pydantic rclpy ros2topic rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.";
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
