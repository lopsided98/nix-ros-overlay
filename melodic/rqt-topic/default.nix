
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, pythonPackages, rqt-gui, rostopic, std-msgs, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-topic";
  version = "0.4.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_topic-release/archive/release/melodic/rqt_topic/0.4.10-0.tar.gz;
    sha256 = "54ab2164334a2a0ef5774a8b684d8275425e807891d98129795292fa2d968b99";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rostopic std-msgs python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
