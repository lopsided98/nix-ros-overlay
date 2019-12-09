
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, cmake-modules, catkin, eigen, python-orocos-kdl, tf2, rospy, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-tf2-sensor-msgs";
  version = "0.5.20";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/kinetic/tf2_sensor_msgs/0.5.20-0.tar.gz";
    name = "0.5.20-0.tar.gz";
    sha256 = "16255689e629bea3e5f454d144867f1455fd8bb204df1c271cfdfe3aea0b3eb9";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs cmake-modules eigen tf2 tf2-ros ];
  checkInputs = [ geometry-msgs rostest ];
  propagatedBuildInputs = [ sensor-msgs eigen python-orocos-kdl tf2 rospy tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Small lib to transform sensor_msgs with tf. Most notably, PointCloud2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
