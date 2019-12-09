
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, nav-msgs, navfn, dynamic-reconfigure, cmake-modules, tf2-geometry-msgs, tf2-ros, rotate-recovery, move-base-msgs, clear-costmap-recovery, std-srvs, catkin, costmap-2d, nav-core, roscpp, message-generation, rospy, actionlib, base-local-planner, visualization-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-move-base";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/move_base/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "ea44c7c0d6e7414c9fe7b45c9e1567d10f5f9bb1963a40a01299fcd8a3035ed6";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pluginlib nav-msgs navfn dynamic-reconfigure cmake-modules tf2-geometry-msgs tf2-ros rotate-recovery move-base-msgs clear-costmap-recovery std-srvs costmap-2d nav-core roscpp rospy message-generation actionlib base-local-planner visualization-msgs ];
  propagatedBuildInputs = [ tf2-ros clear-costmap-recovery geometry-msgs dynamic-reconfigure message-runtime pluginlib std-srvs actionlib base-local-planner costmap-2d nav-core visualization-msgs roscpp rospy nav-msgs navfn rotate-recovery move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_base package provides an implementation of an action (see the <a href="http://www.ros.org/wiki/actionlib">actionlib</a> package) that, given a goal in the world, will attempt to reach it with a mobile base. The move_base node links together a global and local planner to accomplish its global navigation task. It supports any global planner adhering to the nav_core::BaseGlobalPlanner interface specified in the <a href="http://www.ros.org/wiki/nav_core">nav_core</a> package and any local planner adhering to the nav_core::BaseLocalPlanner interface specified in the <a href="http://www.ros.org/wiki/nav_core">nav_core</a> package. The move_base node also maintains two costmaps, one for the global planner, and one for a local planner (see the <a href="http://www.ros.org/wiki/costmap_2d">costmap_2d</a> package) that are used to accomplish navigation tasks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
