
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python-qt-binding, pythonPackages, rclpy, ros2topic, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-jazzy-rqt-topic";
  version = "1.7.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/jazzy/rqt_topic/1.7.2-2.tar.gz";
    name = "1.7.2-2.tar.gz";
    sha256 = "8b5902bf6c37620e583607fc8225e54ce53cbf6c5579b38f1a7c09024869e30c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ python-qt-binding rclpy ros2topic rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.";
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
