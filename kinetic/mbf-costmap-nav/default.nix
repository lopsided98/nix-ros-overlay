
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, tf, mbf-utility, actionlib-msgs, nav-msgs, dynamic-reconfigure, move-base-msgs, mbf-abstract-nav, std-msgs, std-srvs, catkin, nav-core, roscpp, mbf-msgs, actionlib, base-local-planner, mbf-costmap-core, move-base }:
buildRosPackage {
  pname = "ros-kinetic-mbf-costmap-nav";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/mbf_costmap_nav/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "60cc902bbd88738e899603b7bb08e00cf54e6fa1824827a2870c5462ef3eb515";
  };

  buildType = "catkin";
  buildInputs = [ mbf-abstract-nav geometry-msgs dynamic-reconfigure pluginlib std-msgs std-srvs actionlib base-local-planner tf mbf-utility nav-core mbf-costmap-core actionlib-msgs roscpp mbf-msgs nav-msgs ];
  propagatedBuildInputs = [ mbf-abstract-nav geometry-msgs dynamic-reconfigure pluginlib std-msgs std-srvs tf base-local-planner actionlib mbf-utility nav-core mbf-costmap-core actionlib-msgs move-base roscpp mbf-msgs nav-msgs move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_costmap_nav package contains the costmap navigation server implementation of Move Base Flex (MBF). The costmap navigation server is bound to the <a href="wiki.ros.org/costmap_2d">costmap_2d</a> representation. It provides the Actions for planning, controlling and recovering. At the time of start MBF loads all defined plugins. Therefor, it loads all plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions. 

        Additionally the mbf_costmap_nav package comes with a wrapper for the old navigation stack and the plugins which inherits from the <a href="wiki.ros.org/nav_core">nav_core</a> base classes. Preferably it tries to load plugins for the new API. However, plugins could even support both <a href="wiki.ros.org/move_base">move_base</a> and <a href="wiki.ros.org/move_base_flex">move_base_flex</a> by inheriting both base class interfaces located in the <a href="wiki.ros.org/nav_core">nav_core</a> package and in the <a href="mbf_costmap_core">mbf_costmap_core</a> package.'';
    license = with lib.licenses; [ "3-Clause BSD" ];
  };
}
