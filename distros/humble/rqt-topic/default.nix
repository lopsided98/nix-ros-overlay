
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python-qt-binding, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-humble-rqt-topic";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/humble/rqt_topic/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "76d3bef4823a4f28996d821bf6f7430520efb2d82e8e9c75e0dcd18521a72a6e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ python-qt-binding rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = "rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.";
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
