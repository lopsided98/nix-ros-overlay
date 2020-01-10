
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, move-base-msgs, nav-msgs, py-trees, py-trees-msgs, python-qt-binding, pythonPackages, rosbag, rospy, rostest, rosunit, sensor-msgs, std-msgs, unique-id, uuid-msgs }:
buildRosPackage {
  pname = "ros-kinetic-py-trees-ros";
  version = "0.5.18";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros-release/archive/release/kinetic/py_trees_ros/0.5.18-0.tar.gz";
    name = "0.5.18-0.tar.gz";
    sha256 = "8ccd9b72ac748347c16d7c8d1a8cce26ea678b614531c997cb45bd13c634c390";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.setuptools ];
  checkInputs = [ geometry-msgs py-trees python-qt-binding rostest rosunit ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs move-base-msgs nav-msgs py-trees py-trees-msgs pythonPackages.rospkg pythonPackages.termcolor rosbag rospy sensor-msgs std-msgs unique-id uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros extensions and behaviours for py_trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
