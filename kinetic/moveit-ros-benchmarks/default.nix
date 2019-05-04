
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, moveit-ros-warehouse, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-benchmarks";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_benchmarks/0.9.15-0.tar.gz;
    sha256 = "08c844d6105c043d3cf500ac24a775898239966cb15ea289c56a85632fa45e80";
  };

  buildInputs = [ moveit-ros-planning moveit-ros-warehouse roscpp pluginlib ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-warehouse roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enhanced tools for benchmarks in MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
