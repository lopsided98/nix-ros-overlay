
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, rostest, moveit-core, roscpp, moveit-ros-planning-interface, chomp-motion-planner }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners-chomp";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners_chomp/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "1da3d5449339b872017fe01d4592569a79c24dbcea3e64d2c045f2f1393ea35d";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib chomp-motion-planner roscpp moveit-core ];
  checkInputs = [ rostest moveit-ros-planning-interface ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The interface for using CHOMP within MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
