
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, base-local-planner, costmap-2d, nav-core, sbpl-lattice-planner, roscpp, pose-follower, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-sbpl-recovery";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/sbpl_recovery/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "24aab134f21caea064f1e410dfc852452977c99f2e064b97203e2e701c31ded5";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib base-local-planner costmap-2d nav-core sbpl-lattice-planner roscpp pose-follower tf2-ros ];
  propagatedBuildInputs = [ pluginlib base-local-planner costmap-2d nav-core sbpl-lattice-planner roscpp pose-follower tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A recovery behavior that uses the sbpl lattice planner and the pose
    follower to try to plan in full 3D to get the robot out of really tricky
    situations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
