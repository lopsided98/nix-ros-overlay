
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, python-orocos-kdl, rospy, rostest, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-tf2-sensor-msgs";
  version = "0.6.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_sensor_msgs/0.6.5-0.tar.gz";
    name = "0.6.5-0.tar.gz";
    sha256 = "1a5247c2cfec650cb26758f587e6af12e90b0a99749eb861813ab39f83c7b2e6";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  checkInputs = [ geometry-msgs rostest ];
  propagatedBuildInputs = [ eigen python-orocos-kdl rospy sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Small lib to transform sensor_msgs with tf. Most notably, PointCloud2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
