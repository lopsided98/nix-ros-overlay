
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, dynamic-reconfigure, nav-core, nav-msgs, pluginlib, roscpp, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-pose-follower";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/pose_follower/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "d37380604adbf15365d7e93126512fb0710e993c8c35fd03d5a2cd8167e2d57a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ base-local-planner costmap-2d dynamic-reconfigure nav-core nav-msgs pluginlib roscpp tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A implementation of a local planner that attempts to follow a plan as closely as possible.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
