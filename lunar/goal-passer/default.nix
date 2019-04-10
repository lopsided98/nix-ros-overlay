
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, nav-core, catkin, roscpp }:
buildRosPackage {
  pname = "ros-lunar-goal-passer";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/lunar/goal_passer/0.2.1-0.tar.gz;
    sha256 = "db253cac00a25e027dcad1afc269231b00f6fb7efd05b9da675d04cb9afa2c10";
  };

  buildInputs = [ costmap-2d nav-core roscpp pluginlib ];
  propagatedBuildInputs = [ costmap-2d nav-core roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A global planner plugin for move_base that simply passes the target pose on
    as a global plan. Useful for debugging local planners.'';
    #license = lib.licenses.BSD;
  };
}
