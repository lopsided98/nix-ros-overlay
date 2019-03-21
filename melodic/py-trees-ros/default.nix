
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, actionlib, rospy, geometry-msgs, py-trees, pythonPackages, unique-id, rosbag, catkin, move-base-msgs, nav-msgs, std-msgs, python-qt-binding, sensor-msgs, py-trees-msgs, uuid-msgs, rostest, dynamic-reconfigure, rosunit }:
buildRosPackage {
  pname = "ros-melodic-py-trees-ros";
  version = "0.5.16";

  src = fetchurl {
    url = https://github.com/stonier/py_trees_ros-release/archive/release/melodic/py_trees_ros/0.5.16-0.tar.gz;
    sha256 = "ff4969870401c0ab359a185328c283b3e50ac51c2edad4dcefda781735bf7ecb";
  };

  checkInputs = [ rostest python-qt-binding rosunit geometry-msgs py-trees ];
  propagatedBuildInputs = [ unique-id actionlib-msgs pythonPackages.termcolor pythonPackages.rospkg rosbag sensor-msgs py-trees-msgs rospy uuid-msgs move-base-msgs nav-msgs actionlib dynamic-reconfigure std-msgs geometry-msgs py-trees ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Ros extensions and behaviours for py_trees.'';
    #license = lib.licenses.BSD;
  };
}
