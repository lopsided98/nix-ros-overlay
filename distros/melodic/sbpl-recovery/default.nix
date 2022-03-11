
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, nav-core, pluginlib, pose-follower, roscpp, sbpl-lattice-planner, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-sbpl-recovery";
  version = "0.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/sbpl_recovery/0.3.5-1.tar.gz";
    name = "0.3.5-1.tar.gz";
    sha256 = "740c25ade316477bc2ab37c5e138c35ae2122911d2a766fad2b39aa63a89e9e3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ base-local-planner costmap-2d nav-core pluginlib pose-follower roscpp sbpl-lattice-planner tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A recovery behavior that uses the sbpl lattice planner and the pose
    follower to try to plan in full 3D to get the robot out of really tricky
    situations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
