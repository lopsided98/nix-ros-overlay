
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, genmsg, genpy, python-qt-binding, qt-gui, rosbag, roslib, rospy, rostopic, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-py-common";
  version = "0.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/melodic/rqt_py_common/0.5.2-1.tar.gz";
    name = "0.5.2-1.tar.gz";
    sha256 = "8c59891fcdbf11af9c98cc0ad0b3248a35250d781bf855c3d0d48f27d67a70ff";
  };

  buildType = "catkin";
  buildInputs = [ genmsg std-msgs ];
  propagatedBuildInputs = [ actionlib genpy python-qt-binding qt-gui rosbag roslib rospy rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_py_common provides common functionality for rqt plugins written in Python.
    Despite no plugin is provided, this package is part of the rqt_common_plugins
    repository to keep refactoring generic functionality from these common plugins
    into this package as easy as possible.

    Functionality included in this package should cover generic ROS concepts and
    should not introduce any special dependencies beside &quot;ros_base&quot;.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
