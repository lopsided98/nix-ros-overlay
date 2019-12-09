
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosunit, py-trees-msgs, actionlib-msgs, uuid-msgs, nav-msgs, rostest, sensor-msgs, dynamic-reconfigure, rosbag, move-base-msgs, unique-id, std-msgs, catkin, pythonPackages, py-trees, rospy, python-qt-binding, actionlib }:
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
  checkInputs = [ geometry-msgs rosunit py-trees rostest python-qt-binding ];
  propagatedBuildInputs = [ pythonPackages.termcolor sensor-msgs geometry-msgs unique-id dynamic-reconfigure nav-msgs std-msgs pythonPackages.rospkg actionlib py-trees-msgs py-trees actionlib-msgs rosbag rospy uuid-msgs move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros extensions and behaviours for py_trees.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
