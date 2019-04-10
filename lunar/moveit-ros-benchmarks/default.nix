
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, pluginlib, catkin, moveit-ros-warehouse, roscpp }:
buildRosPackage {
  pname = "ros-lunar-moveit-ros-benchmarks";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_benchmarks/0.9.12-1.tar.gz;
    sha256 = "5d3242ccedb9ddc5c9b38a6018c5528d45078954d04a3f35e37a90226c94c20f";
  };

  buildInputs = [ moveit-ros-planning moveit-ros-warehouse roscpp pluginlib ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-warehouse roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Enhanced tools for benchmarks in MoveIt!'';
    #license = lib.licenses.BSD;
  };
}
