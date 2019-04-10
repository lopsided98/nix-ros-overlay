
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rosbag, rqt-gui, pythonPackages, catkin, rosgraph-msgs, rospy, roslib, python-qt-binding, rosnode }:
buildRosPackage {
  pname = "ros-lunar-rqt-bag";
  version = "0.4.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_bag-release/archive/release/lunar/rqt_bag/0.4.12-0.tar.gz;
    sha256 = "c77470ee24acd93a7eb379759554030f054e822dec73548680082ad71cb5d99e";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rosbag rqt-gui rosgraph-msgs rospy roslib python-qt-binding rosnode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    #license = lib.licenses.BSD;
  };
}
