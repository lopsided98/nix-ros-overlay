
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, pluginlib, tf, base-local-planner, catkin, costmap-2d, nav-core, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pose-follower";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/pose_follower/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "72a612385c42a2f2b85a4e5bf6a878fdf8fea5864cad24bcd265432f1a518f37";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure pluginlib tf base-local-planner costmap-2d nav-core roscpp nav-msgs ];
  propagatedBuildInputs = [ dynamic-reconfigure pluginlib tf base-local-planner costmap-2d nav-core roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A implementation of a local planner that attempts to follow a plan as closely as possible.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
