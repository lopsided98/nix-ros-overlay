
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, boost, tf, gtest, catkin, roscpp, rostest, std-msgs, rostime, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-warehouse-ros";
  version = "0.9.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/warehouse_ros-release/archive/release/kinetic/warehouse_ros/0.9.2-0.tar.gz;
    sha256 = "263b8bffbae69b15d352e6893d533d7bd79ca3a6f995b669378e0c7d0deac49c";
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
