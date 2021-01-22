
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-benchmarks, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-perception, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-visualization, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "8dd330e655b8936b8e5c55c614b47bcab013b53d55f1937180789ac9360f633e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-ros-benchmarks moveit-ros-manipulation moveit-ros-move-group moveit-ros-perception moveit-ros-planning moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-visualization moveit-ros-warehouse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
