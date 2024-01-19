
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-core, pluginlib }:
buildRosPackage {
  pname = "ros-noetic-moveit-chomp-optimizer-adapter";
  version = "1.1.13-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_chomp_optimizer_adapter/1.1.13-2.tar.gz";
    name = "1.1.13-2.tar.gz";
    sha256 = "9e5dc2d748df703a199f05c1d90ad4173c2d0638454fa072626822167c85b355";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt planning request adapter utilizing chomp for solution optimization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
