
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, tf, nav-core, catkin, nav-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pose-follower";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/pose_follower/0.2.1-0.tar.gz;
    sha256 = "59c69786e6a77421309a24fb371ef011dfd53a0e58ff9ec5cafff398f6f26bfb";
  };

  propagatedBuildInputs = [ costmap-2d nav-msgs pluginlib base-local-planner nav-core tf roscpp ];
  nativeBuildInputs = [ costmap-2d nav-msgs catkin pluginlib base-local-planner nav-core tf roscpp ];

  meta = {
    description = ''A implementation of a local planner that attempts to follow a plan as closely as possible.'';
    #license = lib.licenses.BSD;
  };
}
