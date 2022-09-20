
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python-qt-binding, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-foxy-rqt-topic";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/foxy/rqt_topic/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "34f176a2b9f398a41b8b05c40a1512177d7156a06de9206e8346e875d6d93509";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ python-qt-binding rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
