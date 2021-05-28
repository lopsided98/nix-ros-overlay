
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python-qt-binding, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-galactic-rqt-topic";
  version = "1.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/galactic/rqt_topic/1.2.1-2.tar.gz";
    name = "1.2.1-2.tar.gz";
    sha256 = "40051938771562d1422027b8a9a1649893fac2b4b15f6776edb04a4ada4e639a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ python-qt-binding rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
