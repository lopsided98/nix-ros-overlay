
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rosbag, rqt-gui, pythonPackages, catkin, rosgraph-msgs, rospy, roslib, python-qt-binding, rosnode }:
buildRosPackage {
  pname = "ros-melodic-rqt-bag";
  version = "0.4.12";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_bag-release/archive/release/melodic/rqt_bag/0.4.12-0.tar.gz;
    sha256 = "53a48d67f5cedf54b58b26b33350958952bac0c27f38160918c6ba0f4aa5014f";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rosbag rqt-gui rosgraph-msgs rospy roslib python-qt-binding rosnode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_bag provides a GUI plugin for displaying and replaying ROS bag files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
