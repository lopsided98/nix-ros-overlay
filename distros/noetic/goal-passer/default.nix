
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, nav-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-goal-passer";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/goal_passer/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "3eaf495a78b86279c105d8bef4dd6af74ae3878289f2cc025762acc02444149d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-2d nav-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A global planner plugin for move_base that simply passes the target pose on
    as a global plan. Useful for debugging local planners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
