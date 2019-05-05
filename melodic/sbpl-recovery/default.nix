
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, nav-core, catkin, tf2-ros, sbpl-lattice-planner, pose-follower, roscpp }:
buildRosPackage {
  pname = "ros-melodic-sbpl-recovery";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/sbpl_recovery/0.3.2-0.tar.gz;
    sha256 = "b9c8d77b01c68be444f7e4c5dfa555f55c23076a8e6b060b755ca6883ed5f1be";
  };

  buildInputs = [ costmap-2d pluginlib base-local-planner nav-core tf2-ros sbpl-lattice-planner pose-follower roscpp ];
  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner nav-core tf2-ros sbpl-lattice-planner pose-follower roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A recovery behavior that uses the sbpl lattice planner and the pose
    follower to try to plan in full 3D to get the robot out of really tricky
    situations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
