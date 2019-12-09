
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, moveit-ros-planning-interface, pluginlib, catkin, chomp-motion-planner, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners-chomp";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners_chomp/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "1da3d5449339b872017fe01d4592569a79c24dbcea3e64d2c045f2f1393ea35d";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core pluginlib chomp-motion-planner roscpp ];
  checkInputs = [ moveit-ros-planning-interface rostest ];
  propagatedBuildInputs = [ moveit-core pluginlib chomp-motion-planner roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The interface for using CHOMP within MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
