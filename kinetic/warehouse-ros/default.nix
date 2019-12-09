
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, geometry-msgs, pluginlib, std-msgs, tf, catkin, rostime, roscpp, gtest, rostest }:
buildRosPackage {
  pname = "ros-kinetic-warehouse-ros";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/warehouse_ros-release/archive/release/kinetic/warehouse_ros/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "d1c58ca0544269702a600c838af44c88551bf2778a4c28a96d65f07ac58b8d51";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pluginlib std-msgs tf rostime roscpp ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ boost geometry-msgs pluginlib std-msgs tf rostime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Persistent storage of ROS messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
