
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assisted-teleop, catkin, goal-passer, pose-base-controller, pose-follower, sbpl-lattice-planner, sbpl-recovery, twist-recovery }:
buildRosPackage {
  pname = "ros-melodic-navigation-experimental";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/navigation_experimental/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "67965b9d9247e010701e3ca6adf0599a8cabe7cf4711d92d4a60b5037d5e1406";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
