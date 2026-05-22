
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-xmllint, python-qt-binding, python3Packages, rclpy, ros2topic, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-rolling-rqt-topic";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/rolling/rqt_topic/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "a42043c2dbe8618d29940594c3f62d9165a4f97198b64b9b0348b78b67a933f6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.pydantic rclpy ros2topic rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.";
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
