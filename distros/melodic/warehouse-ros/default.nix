
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, gtest, pluginlib, roscpp, rostest, rostime, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-warehouse-ros";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/warehouse_ros-release/archive/release/melodic/warehouse_ros/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "5ca7ab01596b0a016cd246426d942d88e503ebbcf407e379589560459a64f88d";
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
