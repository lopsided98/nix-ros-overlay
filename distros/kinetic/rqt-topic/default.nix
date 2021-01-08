
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, rostopic, rqt-gui, rqt-gui-py, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-topic";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_topic-release/archive/release/kinetic/rqt_topic/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "2b048aceb50743defe6074b5bf691ad43fb8726776fe07d52dbe40158577161d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg rostopic rqt-gui rqt-gui-py std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
