
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assisted-teleop, catkin, sbpl-lattice-planner, pose-follower, goal-passer, twist-recovery, pose-base-controller, sbpl-recovery }:
buildRosPackage {
  pname = "ros-melodic-navigation-experimental";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/navigation_experimental/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "dfb18ed3954940c6f6416c2f9e2ab9a38a01327aebe7cb19b8e83cfe53157c0c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pose-base-controller sbpl-lattice-planner pose-follower goal-passer twist-recovery assisted-teleop sbpl-recovery ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of navigation plugins and tools: Various recovery behaviors,
    local and global planner plugins for move_base, a teleop filter for
    obstacle avoidance, a simple control-based move_base replacement
    etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
