
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, moveit-ros-warehouse, pluginlib, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-benchmarks";
  version = "1.1.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_benchmarks/1.1.15-1.tar.gz";
    name = "1.1.15-1.tar.gz";
    sha256 = "69f8534b07090e4d5fa5a014e60af31a3fe5cbea960cc1b331ba44f1c11d3f27";
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
