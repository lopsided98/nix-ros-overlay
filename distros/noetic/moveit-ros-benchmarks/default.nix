
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, moveit-ros-warehouse, pluginlib, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-benchmarks";
  version = "1.1.13-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_benchmarks/1.1.13-2.tar.gz";
    name = "1.1.13-2.tar.gz";
    sha256 = "2636f701c961f9b98b189deceb478d8aefdb783628351ea061d28103d1c89b10";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-warehouse pluginlib roscpp tf2-eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enhanced tools for benchmarks in MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
