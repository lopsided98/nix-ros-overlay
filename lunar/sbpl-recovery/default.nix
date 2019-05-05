
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, nav-core, catkin, sbpl-lattice-planner, pose-follower, roscpp }:
buildRosPackage {
  pname = "ros-lunar-sbpl-recovery";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/lunar/sbpl_recovery/0.2.1-0.tar.gz;
    sha256 = "59d8c24d277f381500c781b656fe9bc38d6db463aeb82dae2613bf3fa2eb93e8";
  };

  buildInputs = [ costmap-2d pluginlib base-local-planner nav-core sbpl-lattice-planner pose-follower roscpp ];
  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner nav-core sbpl-lattice-planner pose-follower roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A recovery behavior that uses the sbpl lattice planner and the pose
    follower to try to plan in full 3D to get the robot out of really tricky
    situations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
