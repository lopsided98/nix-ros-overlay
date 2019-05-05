
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-ros-benchmarks, moveit-ros-visualization, moveit-ros-move-group, moveit-ros-robot-interaction, catkin, moveit-ros-manipulation, moveit-ros-warehouse, moveit-ros-perception, moveit-ros-planning-interface }:
buildRosPackage {
  pname = "ros-lunar-moveit-ros";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros/0.9.12-1.tar.gz;
    sha256 = "5fab3d052926f8b6b58ffb98e44f9e09a6e53e4568561ce9e04579a0e87f8323";
  };

  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-benchmarks moveit-ros-move-group moveit-ros-visualization moveit-ros-robot-interaction moveit-ros-manipulation moveit-ros-warehouse moveit-ros-perception moveit-ros-planning-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
