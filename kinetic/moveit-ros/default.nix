
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-ros-benchmarks, moveit-ros-visualization, moveit-ros-move-group, moveit-ros-robot-interaction, catkin, moveit-ros-manipulation, moveit-ros-warehouse, moveit-ros-perception, moveit-ros-planning-interface }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros/0.9.15-0.tar.gz;
    sha256 = "ec9f98e416bd7743ccacf9411a4e619865ad0fe80fa3a2178235b0ca00c74d7e";
  };

  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-benchmarks moveit-ros-move-group moveit-ros-visualization moveit-ros-robot-interaction moveit-ros-manipulation moveit-ros-warehouse moveit-ros-perception moveit-ros-planning-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! that use ROS'';
    #license = lib.licenses.BSD;
  };
}
