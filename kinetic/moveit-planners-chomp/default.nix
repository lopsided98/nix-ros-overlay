
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-experimental, pluginlib, catkin, rostest, moveit-core, roscpp, moveit-ros-planning-interface, chomp-motion-planner }:
buildRosPackage {
  pname = "ros-kinetic-moveit-planners-chomp";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_planners_chomp/0.9.15-0.tar.gz;
    sha256 = "82ace3f48d2683e856ce9459089f167235e8274e4a2e60a41b9e9939ce694ebc";
  };

  buildInputs = [ moveit-experimental pluginlib moveit-core roscpp chomp-motion-planner ];
  checkInputs = [ rostest moveit-ros-planning-interface ];
  propagatedBuildInputs = [ pluginlib roscpp moveit-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The interface for using CHOMP within MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
