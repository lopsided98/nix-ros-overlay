
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, mbf-abstract-core, pluginlib, actionlib-msgs, mbf-msgs, catkin, tf2-ros, roscpp, tf2, nav-msgs, actionlib, std-msgs, dynamic-reconfigure, tf, mbf-abstract-nav, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mbf-simple-nav";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/mbf_simple_nav/0.2.3-0.tar.gz;
    sha256 = "a94f04c67db68281ef1fbab39a412d953cdaa2a588c60e7714e06ea9ca3abd49";
  };

  propagatedBuildInputs = [ std-srvs mbf-abstract-core pluginlib actionlib-msgs tf mbf-msgs tf2-ros tf2 nav-msgs actionlib dynamic-reconfigure std-msgs roscpp mbf-abstract-nav geometry-msgs ];
  nativeBuildInputs = [ std-srvs mbf-abstract-core pluginlib actionlib-msgs tf mbf-msgs catkin tf2-ros tf2 nav-msgs actionlib dynamic-reconfigure std-msgs roscpp mbf-abstract-nav geometry-msgs ];

  meta = {
    description = ''The mbf_simple_nav package contains a simple navigation server implementation of Move Base Flex (MBF). The simple navigation server is bound to no map representation. It provides actions for planning, controlling and recovering. MBF loads all defined plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions. 

        It tries to load the defined plugins which implements the defined interfaces in <a href="wiki.ros.org/mbf_abstract_core">mbf_abstract_core</a>.'';
    #license = lib.licenses.3-Clause BSD;
  };
}
