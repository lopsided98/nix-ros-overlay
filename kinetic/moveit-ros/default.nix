
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-benchmarks, moveit-ros-warehouse, moveit-ros-move-group, moveit-ros-robot-interaction, moveit-ros-planning-interface, catkin, moveit-ros-manipulation, moveit-ros-perception, moveit-ros-visualization, moveit-ros-planning }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "2d0089b36f94a4d5bb49a803d0eccda09e1c14ec38ae909c1669b1b83521675d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-benchmarks moveit-ros-warehouse moveit-ros-move-group moveit-ros-robot-interaction moveit-ros-planning-interface moveit-ros-manipulation moveit-ros-perception moveit-ros-visualization moveit-ros-planning ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
