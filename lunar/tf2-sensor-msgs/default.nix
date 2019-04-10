
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, python-orocos-kdl, sensor-msgs, catkin, tf2-ros, tf2, rostest, eigen, rospy, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-tf2-sensor-msgs";
  version = "0.5.20";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/lunar/tf2_sensor_msgs/0.5.20-0.tar.gz;
    sha256 = "e84b9d761c8baac1d016b1614a8b054378ea0edba329ae81535b3fc2ed125add";
  };

  buildInputs = [ tf2 cmake-modules eigen sensor-msgs tf2-ros ];
  checkInputs = [ rostest geometry-msgs ];
  propagatedBuildInputs = [ tf2 rospy python-orocos-kdl sensor-msgs tf2-ros eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Small lib to transform sensor_msgs with tf. Most notably, PointCloud2'';
    #license = lib.licenses.BSD;
  };
}
