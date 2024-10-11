
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometric-shapes, moveit-core, moveit-msgs, octomap, pluginlib, rosunit, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-occupancy-map-monitor";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_occupancy_map_monitor/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "c39ff7eec8849ec795a013f275f63f61e2a22b9ed8c4dd7bfe3938ca667139f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geometric-shapes moveit-core moveit-msgs octomap pluginlib tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Components of MoveIt connecting to occupancy map";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
