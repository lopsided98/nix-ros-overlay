
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometric-shapes, moveit-core, moveit-msgs, octomap, pluginlib, rosunit, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-occupancy-map-monitor";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_occupancy_map_monitor/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "c4254a4caac10d56e4b59697c04766377db15d5fd780c89145bc171aa942db24";
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
