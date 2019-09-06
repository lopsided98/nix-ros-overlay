
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, roslib, qt-gui, rostopic, actionlib, rospy, std-msgs, genmsg, genpy, python-qt-binding }:
buildRosPackage {
  pname = "ros-melodic-rqt-py-common";
  version = "0.5.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt-release/archive/release/melodic/rqt_py_common/0.5.0-0.tar.gz";
    name = "0.5.0-0.tar.gz";
    sha256 = "54fd2fa913483ae10a05f07b58c91b78b3f3cf79f0dfd53544adb1ca1e576123";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs genmsg ];
  propagatedBuildInputs = [ rosbag roslib qt-gui rostopic actionlib rospy genpy python-qt-binding ];
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
