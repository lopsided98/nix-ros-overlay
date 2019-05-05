
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, actionlib, tf, mbf-abstract-nav, geometry-msgs, std-srvs, mbf-costmap-core, catkin, move-base, move-base-msgs, nav-msgs, std-msgs, roscpp, pluginlib, base-local-planner, mbf-msgs, nav-core, dynamic-reconfigure, mbf-utility }:
buildRosPackage {
  pname = "ros-melodic-mbf-costmap-nav";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_costmap_nav/0.2.3-0.tar.gz;
    sha256 = "90930d3e6a71b902aa8171c57d1d967a9d2fb131770d854494b932339bcad2cc";
  };

  buildInputs = [ std-srvs mbf-costmap-core pluginlib actionlib-msgs base-local-planner tf mbf-msgs nav-core mbf-utility nav-msgs actionlib dynamic-reconfigure std-msgs roscpp mbf-abstract-nav geometry-msgs ];
  propagatedBuildInputs = [ std-srvs mbf-costmap-core pluginlib actionlib-msgs base-local-planner tf mbf-msgs nav-core move-base mbf-utility move-base-msgs nav-msgs actionlib dynamic-reconfigure std-msgs roscpp mbf-abstract-nav geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_costmap_nav package contains the costmap navigation server implementation of Move Base Flex (MBF). The costmap navigation server is bound to the <a href="wiki.ros.org/costmap_2d">costmap_2d</a> representation. It provides the Actions for planning, controlling and recovering. At the time of start MBF loads all defined plugins. Therefor, it loads all plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions. 

        Additionally the mbf_costmap_nav package comes with a wrapper for the old navigation stack and the plugins which inherits from the <a href="wiki.ros.org/nav_core">nav_core</a> base classes. Preferably it tries to load plugins for the new API. However, plugins could even support both <a href="wiki.ros.org/move_base">move_base</a> and <a href="wiki.ros.org/move_base_flex">move_base_flex</a> by inheriting both base class interfaces located in the <a href="wiki.ros.org/nav_core">nav_core</a> package and in the <a href="mbf_costmap_core">mbf_costmap_core</a> package.'';
    license = with lib.licenses; [ "3-Clause BSD" ];
  };
}
