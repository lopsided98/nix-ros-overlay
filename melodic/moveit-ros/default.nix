
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-ros-benchmarks, moveit-ros-visualization, moveit-ros-move-group, moveit-ros-robot-interaction, catkin, moveit-ros-manipulation, moveit-ros-warehouse, moveit-ros-perception, moveit-ros-planning-interface }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros/1.0.1-0.tar.gz;
    sha256 = "1e3b1c3ea482401d2aca3d1c47c4d834ed78925004668ac7e50567519ec31c92";
  };

  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-benchmarks moveit-ros-move-group moveit-ros-visualization moveit-ros-robot-interaction moveit-ros-manipulation moveit-ros-warehouse moveit-ros-perception moveit-ros-planning-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! that use ROS'';
    #license = lib.licenses.BSD;
  };
}
