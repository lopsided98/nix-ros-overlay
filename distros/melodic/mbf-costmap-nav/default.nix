
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, mbf-abstract-nav, mbf-costmap-core, mbf-msgs, mbf-utility, move-base, move-base-msgs, nav-core, nav-msgs, pluginlib, roscpp, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-mbf-costmap-nav";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_costmap_nav/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "bd6d42e8fced0659ef62e9b8b14a1a81711a2f3e62d4bc420159bd8eae8dff8d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs costmap-2d dynamic-reconfigure geometry-msgs mbf-abstract-nav mbf-costmap-core mbf-msgs mbf-utility move-base move-base-msgs nav-core nav-msgs pluginlib roscpp std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_costmap_nav package contains the costmap navigation server implementation of Move Base Flex (MBF). The costmap navigation server is bound to the <a href="wiki.ros.org/costmap_2d">costmap_2d</a> representation. It provides the Actions for planning, controlling and recovering. At the time of start MBF loads all defined plugins. Therefor, it loads all plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions. 

        Additionally the mbf_costmap_nav package comes with a wrapper for the old navigation stack and the plugins which inherits from the <a href="wiki.ros.org/nav_core">nav_core</a> base classes. Preferably it tries to load plugins for the new API. However, plugins could even support both <a href="wiki.ros.org/move_base">move_base</a> and <a href="wiki.ros.org/move_base_flex">move_base_flex</a> by inheriting both base class interfaces located in the <a href="wiki.ros.org/nav_core">nav_core</a> package and in the <a href="mbf_costmap_core">mbf_costmap_core</a> package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
