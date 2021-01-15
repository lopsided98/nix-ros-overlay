
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, pythonPackages, roslib, rosmsg, rospy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-kinetic-rqt-msg";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_msg-release/archive/release/kinetic/rqt_msg/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "ab32f50e8a87776f8f062ad6fd88e5d7ec901cdf83d7a9651c97797ecf5a8cb3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding pythonPackages.rospkg roslib rosmsg rospy rqt-console rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the msgs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
