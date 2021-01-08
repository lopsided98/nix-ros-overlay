
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, gtest, pluginlib, roscpp, rostest, rostime, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-warehouse-ros";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/warehouse_ros-release/archive/release/noetic/warehouse_ros/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "e13a08e95124d32895d6182a372c459102e2181b68ac72f31cb1bf595ccd4c34";
  };

  buildType = "catkin";
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ boost geometry-msgs pluginlib roscpp rostime std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Persistent storage of ROS messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
