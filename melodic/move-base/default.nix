
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rotate-recovery, actionlib, rospy, clear-costmap-recovery, geometry-msgs, message-generation, message-runtime, std-srvs, tf2-geometry-msgs, navfn, catkin, tf2-ros, move-base-msgs, nav-msgs, visualization-msgs, roscpp, costmap-2d, pluginlib, base-local-planner, cmake-modules, nav-core, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-move-base";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/move_base/1.16.2-0.tar.gz;
    sha256 = "63af31b19a053e4877e0af0d899b59da73df19a65258c8a823f41afed51e851d";
  };

  propagatedBuildInputs = [ costmap-2d std-srvs pluginlib base-local-planner navfn nav-core rotate-recovery roscpp rospy move-base-msgs tf2-ros nav-msgs actionlib message-runtime dynamic-reconfigure clear-costmap-recovery visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ std-srvs tf2-geometry-msgs navfn catkin rotate-recovery tf2-ros move-base-msgs nav-msgs actionlib clear-costmap-recovery rospy visualization-msgs roscpp geometry-msgs costmap-2d cmake-modules base-local-planner pluginlib nav-core message-generation dynamic-reconfigure ];

  meta = {
    description = ''The move_base package provides an implementation of an action (see the <a href="http://www.ros.org/wiki/actionlib">actionlib</a> package) that, given a goal in the world, will attempt to reach it with a mobile base. The move_base node links together a global and local planner to accomplish its global navigation task. It supports any global planner adhering to the nav_core::BaseGlobalPlanner interface specified in the <a href="http://www.ros.org/wiki/nav_core">nav_core</a> package and any local planner adhering to the nav_core::BaseLocalPlanner interface specified in the <a href="http://www.ros.org/wiki/nav_core">nav_core</a> package. The move_base node also maintains two costmaps, one for the global planner, and one for a local planner (see the <a href="http://www.ros.org/wiki/costmap_2d">costmap_2d</a> package) that are used to accomplish navigation tasks.'';
    #license = lib.licenses.BSD;
  };
}
