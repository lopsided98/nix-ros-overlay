
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python-qt-binding, python3Packages, rosbag, rosgraph-msgs, roslib, rosnode, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-noetic-rqt-bag";
  version = "0.4.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_bag-release/archive/release/noetic/rqt_bag/0.4.13-1.tar.gz";
    name = "0.4.13-1.tar.gz";
    sha256 = "76219c82f3b992a7067952d924e275b3556f70cfe6bcd3b088fe281f44949a25";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python-qt-binding python3Packages.rospkg rosbag rosgraph-msgs roslib rosnode rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
