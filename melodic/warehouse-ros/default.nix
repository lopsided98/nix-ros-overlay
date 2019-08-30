
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, boost, tf, gtest, catkin, roscpp, rostest, std-msgs, rostime, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-warehouse-ros";
  version = "0.9.3-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/warehouse_ros-release/archive/release/melodic/warehouse_ros/0.9.3-1.tar.gz;
    sha256 = "9bc798170ca3d679ac4f4bf3b5db4fa7d748397c9262be0a2373085a18b051ce";
  };

  buildInputs = [ pluginlib tf rostime std-msgs roscpp geometry-msgs ];
  checkInputs = [ rostest gtest ];
  propagatedBuildInputs = [ pluginlib boost rostime roscpp std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Persistent storage of ROS messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
