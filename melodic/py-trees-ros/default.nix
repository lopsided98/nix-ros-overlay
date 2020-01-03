
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, move-base-msgs, nav-msgs, py-trees, py-trees-msgs, python-qt-binding, pythonPackages, rosbag, rospy, rostest, rosunit, sensor-msgs, std-msgs, unique-id, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-py-trees-ros";
  version = "0.5.18";

  src = fetchurl {
    url = "https://github.com/stonier/py_trees_ros-release/archive/release/melodic/py_trees_ros/0.5.18-0.tar.gz";
    name = "0.5.18-0.tar.gz";
    sha256 = "1bc3f54d395458994329b16c3e3abff63702270a44e1443c5cafafe85a7362ac";
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
