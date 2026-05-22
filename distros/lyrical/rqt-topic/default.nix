
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-xmllint, python-qt-binding, python3Packages, rclpy, ros2topic, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-lyrical-rqt-topic";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/lyrical/rqt_topic/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "699bd8441b6f63cfc21447a372f37104fcf962279f64141ff0aef440aa9dc28f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.pydantic rclpy ros2topic rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.";
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
