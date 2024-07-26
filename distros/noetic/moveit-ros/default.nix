
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-ros-benchmarks, moveit-ros-manipulation, moveit-ros-move-group, moveit-ros-perception, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-visualization, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "340dae105336eaba844970325e43b1342ee66562349d79fbd9c2aedf7f517437";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveit-ros-benchmarks moveit-ros-manipulation moveit-ros-move-group moveit-ros-perception moveit-ros-planning moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-visualization moveit-ros-warehouse ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Components of MoveIt that use ROS";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
