
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-core, moveit-ros-planning-interface, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-moveit-planners-chomp";
  version = "1.1.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_planners_chomp/1.1.10-1.tar.gz";
    name = "1.1.10-1.tar.gz";
    sha256 = "6f4de7f92fce6c815eddc9c3cf49d39efc8e3703ded7dc83fe00b54d47c1e171";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-ros-planning-interface rostest ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The interface for using CHOMP within MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
