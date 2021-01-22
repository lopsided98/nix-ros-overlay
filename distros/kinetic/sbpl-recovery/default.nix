
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, nav-core, pluginlib, pose-follower, roscpp, sbpl-lattice-planner }:
buildRosPackage {
  pname = "ros-kinetic-sbpl-recovery";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/sbpl_recovery/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "17d74191dec84a9f62a5292da6269c9cb0dc9a9941bca0086c019a053f5218c6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ base-local-planner costmap-2d nav-core pluginlib pose-follower roscpp sbpl-lattice-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A recovery behavior that uses the sbpl lattice planner and the pose
    follower to try to plan in full 3D to get the robot out of really tricky
    situations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
