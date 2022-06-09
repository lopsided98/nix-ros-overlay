
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python-qt-binding, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-humble-rqt-topic";
  version = "1.2.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/humble/rqt_topic/1.2.3-2.tar.gz";
    name = "1.2.3-2.tar.gz";
    sha256 = "d5cd8a42bce27d43d4e94c6f33f70cf6b8e80a5e1aa6db4bfae68c35041999c4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ python-qt-binding rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
