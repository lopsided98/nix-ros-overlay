
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assisted-teleop, catkin, goal-passer, pose-base-controller, pose-follower, sbpl-lattice-planner, sbpl-recovery, twist-recovery }:
buildRosPackage {
  pname = "ros-noetic-navigation-experimental";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/navigation_experimental/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "983a17e89402e54c4cb8dd6e895158f93a6d8ee9f453f28cd2ddd66da5482226";
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
