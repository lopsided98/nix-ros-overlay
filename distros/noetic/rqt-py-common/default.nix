
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, genmsg, genpy, python-qt-binding, python3Packages, qt-gui, rosbag, roslib, rospy, rostopic, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rqt-py-common";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/noetic/rqt_py_common/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "aa0842f562dc7dcaafaa827bec51e2d8a2676fd9fd184ac50985d062ab424913";
  };

  buildType = "catkin";
  buildInputs = [ catkin genmsg python3Packages.setuptools std-msgs ];
  propagatedBuildInputs = [ actionlib genpy python-qt-binding qt-gui rosbag roslib rospy rostopic ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_py_common provides common functionality for rqt plugins written in Python.
    Despite no plugin is provided, this package is part of the rqt_common_plugins
    repository to keep refactoring generic functionality from these common plugins
    into this package as easy as possible.

    Functionality included in this package should cover generic ROS concepts and
    should not introduce any special dependencies beside &quot;ros_base&quot;.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
