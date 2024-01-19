
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, genmsg, genpy, python-qt-binding, qt-gui, rosbag, roslib, rospy, rostopic, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-py-common";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/noetic/rqt_py_common/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "021bd4579dd2ebf73b589a08345ba476ec96bc042466d345e41f760ca6eae06a";
  };

  buildType = "catkin";
  buildInputs = [ catkin genmsg std-msgs ];
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
