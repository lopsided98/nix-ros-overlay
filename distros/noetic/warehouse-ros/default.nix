
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, gtest, pluginlib, roscpp, rostest, rostime, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-warehouse-ros";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/warehouse_ros-release/archive/release/noetic/warehouse_ros/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "f3ea5eab008525e1e38cdbaffb5b43fa4db549a217abda35e8fb39111281ba91";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ boost geometry-msgs pluginlib roscpp rostime std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Persistent storage of ROS messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
