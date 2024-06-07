
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, moveit-ros-warehouse, pluginlib, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-benchmarks";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_benchmarks/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "f1b3fbbdade499f688d08631bfed0c2aefeb22033086dcf1a40d364595c80caa";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-warehouse pluginlib roscpp tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Enhanced tools for benchmarks in MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
