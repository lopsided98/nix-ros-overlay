
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pose-base-controller, catkin, sbpl-lattice-planner, pose-follower, goal-passer, twist-recovery, assisted-teleop, sbpl-recovery }:
buildRosPackage {
  pname = "ros-melodic-navigation-experimental";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/navigation_experimental/0.3.2-0.tar.gz;
    sha256 = "79834c6c9f70411161eb2604ba1e6b13ecd2d28c89eeefd583530f237a8f851f";
  };

  propagatedBuildInputs = [ assisted-teleop sbpl-lattice-planner pose-follower goal-passer twist-recovery pose-base-controller sbpl-recovery ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of navigation plugins and tools: Various recovery behaviors,
    local and global planner plugins for move_base, a teleop filter for
    obstacle avoidance, a simple control-based move_base replacement
    etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
