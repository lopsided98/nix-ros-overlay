
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-core, pluginlib }:
buildRosPackage {
  pname = "ros-noetic-moveit-chomp-optimizer-adapter";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_chomp_optimizer_adapter/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "795d0d384b749bbcfc4179a26240784d8ad189f29fa44c8d7013951c0b8e298e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt planning request adapter utilizing chomp for solution optimization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
