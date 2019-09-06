
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, rospy, actionlib, geometry-msgs, py-trees, pythonPackages, unique-id, rosbag, catkin, move-base-msgs, nav-msgs, std-msgs, python-qt-binding, sensor-msgs, py-trees-msgs, uuid-msgs, rostest, dynamic-reconfigure, rosunit }:
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
  checkInputs = [ rostest python-qt-binding rosunit geometry-msgs py-trees ];
  propagatedBuildInputs = [ unique-id actionlib-msgs pythonPackages.termcolor pythonPackages.rospkg rosbag sensor-msgs py-trees-msgs uuid-msgs move-base-msgs std-msgs actionlib nav-msgs dynamic-reconfigure rospy geometry-msgs py-trees ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros extensions and behaviours for py_trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
