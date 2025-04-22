
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, rostopic, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-topic";
  version = "0.4.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_topic-release/archive/release/noetic/rqt_topic/0.4.14-1.tar.gz";
    name = "0.4.14-1.tar.gz";
    sha256 = "812424972731209ebad755720d22d6d062f8caccda6656b2de5f265666340986";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg rostopic rqt-gui rqt-gui-py std-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
