
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, nav-core, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-goal-passer";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/goal_passer/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "f20c14ef1bd6e22e3b25dd9f5a1c618dac5a84da0987e85abdef7e9512bcb5a9";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d nav-core roscpp pluginlib ];
  propagatedBuildInputs = [ costmap-2d nav-core roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A global planner plugin for move_base that simply passes the target pose on
    as a global plan. Useful for debugging local planners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
