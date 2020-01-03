
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, moveit-ros-warehouse, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-benchmarks";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_benchmarks/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "447f9b82d349f39208c9e01ec4d9e21e5e31bddfb3ea0532327390871f452329";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-warehouse pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enhanced tools for benchmarks in MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
