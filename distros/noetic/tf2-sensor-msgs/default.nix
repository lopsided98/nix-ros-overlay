
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, python3Packages, rospy, rostest, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-tf2-sensor-msgs";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_sensor_msgs/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "9abd5230feb17b73b983cfbee8f19c0cbda9b9fce4aefa94d4f1960956180d87";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  checkInputs = [ geometry-msgs rostest ];
  propagatedBuildInputs = [ eigen python3Packages.pykdl rospy sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Small lib to transform sensor_msgs with tf. Most notably, PointCloud2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
