
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, move-base-msgs, nav-msgs, py-trees, py-trees-msgs, python-qt-binding, python3Packages, rosbag, rospy, rostest, rosunit, sensor-msgs, std-msgs, unique-id, uuid-msgs }:
buildRosPackage {
  pname = "ros-noetic-py-trees-ros";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros-release/archive/release/noetic/py_trees_ros/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "7f6488f258163a4693f30ec99f789ffab6d59b97981949f5b7ce7d700c085319";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ geometry-msgs py-trees python-qt-binding rostest rosunit ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs move-base-msgs nav-msgs py-trees py-trees-msgs python3Packages.rospkg python3Packages.termcolor rosbag rospy sensor-msgs std-msgs unique-id uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros extensions and behaviours for py_trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
