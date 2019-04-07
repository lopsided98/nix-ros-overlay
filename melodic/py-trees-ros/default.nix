
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, actionlib, rospy, geometry-msgs, py-trees, pythonPackages, unique-id, rosbag, catkin, move-base-msgs, nav-msgs, std-msgs, python-qt-binding, sensor-msgs, py-trees-msgs, uuid-msgs, rostest, dynamic-reconfigure, rosunit }:
buildRosPackage {
  pname = "ros-melodic-py-trees-ros";
  version = "0.5.18";

  src = fetchurl {
    url = https://github.com/stonier/py_trees_ros-release/archive/release/melodic/py_trees_ros/0.5.18-0.tar.gz;
    sha256 = "1bc3f54d395458994329b16c3e3abff63702270a44e1443c5cafafe85a7362ac";
  };

  buildInputs = [ pythonPackages.setuptools ];
  checkInputs = [ rostest python-qt-binding rosunit geometry-msgs py-trees ];
  propagatedBuildInputs = [ unique-id actionlib-msgs pythonPackages.termcolor pythonPackages.rospkg rosbag sensor-msgs py-trees-msgs rospy uuid-msgs move-base-msgs nav-msgs actionlib dynamic-reconfigure std-msgs geometry-msgs py-trees ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros extensions and behaviours for py_trees.'';
    #license = lib.licenses.BSD;
  };
}
