
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-core, pluginlib, tf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-chomp-optimizer-adapter";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_chomp_optimizer_adapter/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "76abba4678e67b320c5dffc74b5c350f2b982d6be9156430eab487f9508524e5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt planning request adapter utilizing chomp for solution optimization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
