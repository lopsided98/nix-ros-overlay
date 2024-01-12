
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python-qt-binding, rclpy, ros2topic, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-iron-rqt-topic";
  version = "1.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/iron/rqt_topic/1.6.1-3.tar.gz";
    name = "1.6.1-3.tar.gz";
    sha256 = "8d599dd5221415403cc75108c1de4ade64638169561b09b2eaa5f92bc4844102";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ python-qt-binding rclpy ros2topic rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
