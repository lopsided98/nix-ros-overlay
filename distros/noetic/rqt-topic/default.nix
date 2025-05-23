
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, rostopic, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-topic";
  version = "0.4.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_topic-release/archive/release/noetic/rqt_topic/0.4.15-1.tar.gz";
    name = "0.4.15-1.tar.gz";
    sha256 = "ba985bc33de6130b0877db41d15572c74ee38a7ed89a57ae306f36643517bafd";
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
