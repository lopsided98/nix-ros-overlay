
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, boost, tf, gtest, catkin, roscpp, rostest, std-msgs, rostime, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-warehouse-ros";
  version = "0.9.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/warehouse_ros-release/archive/release/lunar/warehouse_ros/0.9.2-0.tar.gz;
    sha256 = "279688f315793b719a325fed9589b042f1906f52c23f3ed33b5ee3f313f45973";
  };

  buildInputs = [ pluginlib geometry-msgs std-msgs tf rostime roscpp ];
  checkInputs = [ rostest gtest ];
  propagatedBuildInputs = [ pluginlib boost geometry-msgs std-msgs tf rostime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Persistent storage of ROS messages'';
    #license = lib.licenses.BSD;
  };
}
