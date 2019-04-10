
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, tf, nav-core, catkin, nav-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-pose-follower";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/lunar/pose_follower/0.2.1-0.tar.gz;
    sha256 = "9bd02581c747f41f9cc662d5bfa7eced7278101a5ad0a9cc2bff6475e6dacc4f";
  };

  buildInputs = [ costmap-2d nav-msgs pluginlib base-local-planner nav-core tf roscpp ];
  propagatedBuildInputs = [ costmap-2d nav-msgs pluginlib base-local-planner nav-core tf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A implementation of a local planner that attempts to follow a plan as closely as possible.'';
    #license = lib.licenses.BSD;
  };
}
