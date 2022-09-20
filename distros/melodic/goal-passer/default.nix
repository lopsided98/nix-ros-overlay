
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, nav-core, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-goal-passer";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_experimental-release/archive/release/melodic/goal_passer/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "d68d61e5b36ed2c75022cb13f54ce924c91d187cc4d052eab864cdcf64844fb8";
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
