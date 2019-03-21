
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assisted-teleop, catkin, sbpl-lattice-planner, pose-follower, goal-passer, twist-recovery, pose-base-controller, sbpl-recovery }:
buildRosPackage {
  pname = "ros-kinetic-navigation-experimental";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/navigation_experimental/0.2.1-0.tar.gz;
    sha256 = "e3b2a48e5b1db6352b25db772b9e721f095b0ab91014c914a53baf107c27f0a1";
  };

  propagatedBuildInputs = [ sbpl-lattice-planner pose-follower assisted-teleop goal-passer twist-recovery pose-base-controller sbpl-recovery ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of navigation plugins and tools: Various recovery behaviors,
    local and global planner plugins for move_base, a teleop filter for
    obstacle avoidance, a simple control-based move_base replacement
    etc.'';
    #license = lib.licenses.BSD;
  };
}
