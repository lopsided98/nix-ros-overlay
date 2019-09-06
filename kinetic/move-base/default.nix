
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rotate-recovery, actionlib, rospy, clear-costmap-recovery, tf, geometry-msgs, message-generation, message-runtime, std-srvs, navfn, catkin, move-base-msgs, nav-msgs, roscpp, costmap-2d, pluginlib, cmake-modules, base-local-planner, nav-core, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-move-base";
  version = "1.14.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/move_base/1.14.4-0.tar.gz";
    name = "1.14.4-0.tar.gz";
    sha256 = "a6bf46e38971367730cc6d7bd50766c841f486a7dcfb032ba0d89f9bbc3d3b7a";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d std-srvs pluginlib cmake-modules navfn base-local-planner nav-core rotate-recovery roscpp rospy move-base-msgs message-generation nav-msgs actionlib dynamic-reconfigure clear-costmap-recovery tf geometry-msgs ];
  propagatedBuildInputs = [ costmap-2d std-srvs pluginlib base-local-planner navfn nav-core rotate-recovery roscpp move-base-msgs nav-msgs actionlib message-runtime rospy clear-costmap-recovery dynamic-reconfigure tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_base package provides an implementation of an action (see the <a href="http://www.ros.org/wiki/actionlib">actionlib</a> package) that, given a goal in the world, will attempt to reach it with a mobile base. The move_base node links together a global and local planner to accomplish its global navigation task. It supports any global planner adhering to the nav_core::BaseGlobalPlanner interface specified in the <a href="http://www.ros.org/wiki/nav_core">nav_core</a> package and any local planner adhering to the nav_core::BaseLocalPlanner interface specified in the <a href="http://www.ros.org/wiki/nav_core">nav_core</a> package. The move_base node also maintains two costmaps, one for the global planner, and one for a local planner (see the <a href="http://www.ros.org/wiki/costmap_2d">costmap_2d</a> package) that are used to accomplish navigation tasks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
