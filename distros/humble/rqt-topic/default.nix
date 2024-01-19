
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python-qt-binding, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-humble-rqt-topic";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/humble/rqt_topic/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "28a47feaae4c3f19d7813cfaab866df02918dbb46803cd7cb72b077f47be2e70";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ python-qt-binding rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
