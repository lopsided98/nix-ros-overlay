
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, moveit-ros-planning-interface, pluginlib, catkin, chomp-motion-planner, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-moveit-planners-chomp";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_planners_chomp/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "d529c21c02c92d071e9adf49d1a43f946a145a7ff06eff8602d92645a977aeac";
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
