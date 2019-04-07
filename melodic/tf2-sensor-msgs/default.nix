
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, python-orocos-kdl, sensor-msgs, catkin, tf2-ros, tf2, rostest, eigen, rospy, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tf2-sensor-msgs";
  version = "0.6.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/geometry2-release/archive/release/melodic/tf2_sensor_msgs/0.6.5-0.tar.gz;
    sha256 = "1a5247c2cfec650cb26758f587e6af12e90b0a99749eb861813ab39f83c7b2e6";
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
