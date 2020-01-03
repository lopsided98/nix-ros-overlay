
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, base-local-planner, catkin, clear-costmap-recovery, cmake-modules, costmap-2d, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, move-base-msgs, nav-core, nav-msgs, navfn, pluginlib, roscpp, rospy, rotate-recovery, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-move-base";
  version = "1.14.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/move_base/1.14.5-1.tar.gz";
    name = "1.14.5-1.tar.gz";
    sha256 = "42e5d6a18400f4eb4253f2616d09de15705e60a31cc8f6cb92cc2033c7409114";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-generation ];
  propagatedBuildInputs = [ actionlib base-local-planner clear-costmap-recovery costmap-2d dynamic-reconfigure geometry-msgs message-runtime move-base-msgs nav-core nav-msgs navfn pluginlib roscpp rospy rotate-recovery std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_base package provides an implementation of an action (see the <a href="http://www.ros.org/wiki/actionlib">actionlib</a> package) that, given a goal in the world, will attempt to reach it with a mobile base. The move_base node links together a global and local planner to accomplish its global navigation task. It supports any global planner adhering to the nav_core::BaseGlobalPlanner interface specified in the <a href="http://www.ros.org/wiki/nav_core">nav_core</a> package and any local planner adhering to the nav_core::BaseLocalPlanner interface specified in the <a href="http://www.ros.org/wiki/nav_core">nav_core</a> package. The move_base node also maintains two costmaps, one for the global planner, and one for a local planner (see the <a href="http://www.ros.org/wiki/costmap_2d">costmap_2d</a> package) that are used to accomplish navigation tasks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
