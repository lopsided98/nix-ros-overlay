
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-planning, moveit-ros-warehouse, pluginlib, roscpp, tf2-eigen }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-benchmarks";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_benchmarks/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "e9d143b063ea2f397a57e74ee1979d281402a37101e825b11525472951fd30d8";
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
