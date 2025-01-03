
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, moveit-ros-warehouse, pluginlib, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-benchmarks";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_benchmarks/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "69a42608c0f0cd2cdb5cf7f579effa5c2f760be2bd0d8ce07b13986188abc34f";
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
