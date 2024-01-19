
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, roslib, rosmsg, rospy, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-noetic-rqt-msg";
  version = "0.4.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_msg-release/archive/release/noetic/rqt_msg/0.4.10-1.tar.gz";
    name = "0.4.10-1.tar.gz";
    sha256 = "a9afbaff68d9f0ffa209152355c1511010b312e04d7c8244068f460f165b9f9c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg roslib rosmsg rospy rqt-console rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the msgs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
