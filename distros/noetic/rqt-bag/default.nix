
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, rosbag, rosgraph-msgs, roslib, rosnode, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-bag";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/noetic/rqt_bag/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "4e329ee64210a5f2543af0f32b3fdbfce8ea5c6011b2b25013973c635ffb8de8";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg rosbag rosgraph-msgs roslib rosnode rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
