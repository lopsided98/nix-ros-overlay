
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, pythonPackages, rqt-gui, rostopic, std-msgs, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-topic";
  version = "0.4.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_topic-release/archive/release/lunar/rqt_topic/0.4.10-0.tar.gz;
    sha256 = "67ab0b30fdef851892aa73955f88554f292cd5bdc6cdbe45f60705621b5aae01";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rostopic std-msgs python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_topic provides a GUI plugin for displaying debug information about ROS topics including publishers, subscribers, publishing rate, and ROS Messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
