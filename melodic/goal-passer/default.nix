
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, nav-core, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-goal-passer";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/goal_passer/0.3.2-0.tar.gz;
    sha256 = "9c648c6dfebf422fd014074cd0a9fc095208ff674436da5729f8f515c4386189";
  };

  buildInputs = [ costmap-2d nav-core roscpp pluginlib ];
  propagatedBuildInputs = [ costmap-2d nav-core roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A global planner plugin for move_base that simply passes the target pose on
    as a global plan. Useful for debugging local planners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
