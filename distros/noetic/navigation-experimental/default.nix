
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assisted-teleop, catkin, goal-passer, pose-base-controller, pose-follower, sbpl-lattice-planner, sbpl-recovery, twist-recovery }:
buildRosPackage {
  pname = "ros-noetic-navigation-experimental";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/navigation_experimental/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "f34b9e69bcb084cbc6c3909ab561d0ea09499d1f7f18376b5cec9abda07cc35a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ assisted-teleop goal-passer pose-base-controller pose-follower sbpl-lattice-planner sbpl-recovery twist-recovery ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of navigation plugins and tools: Various recovery behaviors,
    local and global planner plugins for move_base, a teleop filter for
    obstacle avoidance, a simple control-based move_base replacement
    etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
