
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, nav-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-goal-passer";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/goal_passer/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "5657fffc4495dba6d4928f8a03e0c698c8e810111eaf892ca4a42d42c8f4535f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d nav-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A global planner plugin for move_base that simply passes the target pose on
    as a global plan. Useful for debugging local planners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
