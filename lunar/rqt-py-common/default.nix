
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, roslib, qt-gui, rostopic, actionlib, rospy, std-msgs, genmsg, genpy, python-qt-binding }:
buildRosPackage {
  pname = "ros-lunar-rqt-py-common";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt-release/archive/release/lunar/rqt_py_common/0.5.0-0.tar.gz;
    sha256 = "72adcb2aaaf16a170544e33b2ff18b8ae8a0c0eeda7404fdeb810e2361b4b8eb";
  };

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
