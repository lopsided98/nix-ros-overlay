
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, dynamic-reconfigure, nav-core, nav-msgs, pluginlib, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-pose-follower";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/pose_follower/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "72a612385c42a2f2b85a4e5bf6a878fdf8fea5864cad24bcd265432f1a518f37";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ base-local-planner costmap-2d dynamic-reconfigure nav-core nav-msgs pluginlib roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A implementation of a local planner that attempts to follow a plan as closely as possible.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
