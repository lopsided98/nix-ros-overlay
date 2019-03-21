
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, moveit-ros-warehouse, tf2-eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-benchmarks";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_benchmarks/1.0.1-0.tar.gz;
    sha256 = "3168565928ff160fe763f5c06a80f70ef3dd4be70cf043eedc35ef1aefc05e4e";
  };

  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-warehouse pluginlib tf2-eigen roscpp ];
  nativeBuildInputs = [ moveit-ros-planning moveit-ros-warehouse pluginlib tf2-eigen catkin roscpp ];

  meta = {
    description = ''Enhanced tools for benchmarks in MoveIt!'';
    #license = lib.licenses.BSD;
  };
}
