
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, boost, tf, gtest, catkin, roscpp, rostest, std-msgs, rostime, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-warehouse-ros";
  version = "0.9.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/warehouse_ros-release/archive/release/melodic/warehouse_ros/0.9.2-0.tar.gz;
    sha256 = "8e5fa9db4aea56c8bebc4514900b75d2f8bfdeb3d7ae664b4f991273f59b4dfe";
  };

  checkInputs = [ rostest gtest ];
  propagatedBuildInputs = [ pluginlib boost geometry-msgs std-msgs tf rostime roscpp ];
  nativeBuildInputs = [ pluginlib geometry-msgs std-msgs catkin tf rostime roscpp ];

  meta = {
    description = ''Persistent storage of ROS messages'';
    #license = lib.licenses.BSD;
  };
}
