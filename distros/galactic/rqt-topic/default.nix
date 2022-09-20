
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python-qt-binding, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-galactic-rqt-topic";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_topic-release/archive/release/galactic/rqt_topic/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "e33a030b6bd7263e67c6aadd3ef405f0ede8cdacc7061e0a8e651b0599d40678";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint ];
  propagatedBuildInputs = [ python-qt-binding rqt-gui rqt-gui-py rqt-py-common ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
