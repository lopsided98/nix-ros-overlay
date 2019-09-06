
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, catkin, rqt-gui, pythonPackages, rosmsg, rqt-console, rospy, rqt-py-common, roslib, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-msg";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_msg-release/archive/release/melodic/rqt_msg/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "ec3e88d3c822856ace98a11ab03950fb0e9390829122b7abfabc863180611630";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rosmsg rqt-console rospy rqt-py-common roslib python-qt-binding ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the msgs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
