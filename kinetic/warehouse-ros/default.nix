
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, boost, tf, gtest, catkin, roscpp, rostest, std-msgs, rostime, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-warehouse-ros";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/warehouse_ros-release/archive/release/kinetic/warehouse_ros/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "d1c58ca0544269702a600c838af44c88551bf2778a4c28a96d65f07ac58b8d51";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib tf rostime std-msgs roscpp geometry-msgs ];
  checkInputs = [ rostest gtest ];
  propagatedBuildInputs = [ pluginlib boost tf rostime std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Persistent storage of ROS messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
