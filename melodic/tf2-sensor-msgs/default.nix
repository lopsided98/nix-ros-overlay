
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, python-orocos-kdl, rospy, rostest, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-sensor-msgs";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_sensor_msgs/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "f73e69b735c5c8b0bae8303e9f56ab887becb58c59d7a708eb4d5a8cf6ec8185";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ geometry-msgs rostest ];
  propagatedBuildInputs = [ eigen python-orocos-kdl rospy sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Small lib to transform sensor_msgs with tf. Most notably, PointCloud2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
