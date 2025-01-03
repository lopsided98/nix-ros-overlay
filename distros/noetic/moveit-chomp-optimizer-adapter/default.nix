
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, chomp-motion-planner, moveit-core, pluginlib }:
buildRosPackage {
  pname = "ros-noetic-moveit-chomp-optimizer-adapter";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_chomp_optimizer_adapter/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "1e9b7a2239d315694f9b09914160e149b0f5817af0b05f59a47557f220e6d143";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-core pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "MoveIt planning request adapter utilizing chomp for solution optimization";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
