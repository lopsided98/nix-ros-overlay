
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, mbf-abstract-core, mbf-abstract-nav, mbf-msgs, nav-msgs, pluginlib, roscpp, std-msgs, std-srvs, tf, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-mbf-simple-nav";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/noetic/mbf_simple_nav/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "86354de860cc466e8f97c15ebcf32d6a35eff5e859bb7158fb698b439809dd07";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs mbf-abstract-core mbf-abstract-nav mbf-msgs nav-msgs pluginlib roscpp std-msgs std-srvs tf tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_simple_nav package contains a simple navigation server implementation of Move Base Flex (MBF). The simple navigation server is bound to no map representation. It provides actions for planning, controlling and recovering. MBF loads all defined plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions. 

        It tries to load the defined plugins which implements the defined interfaces in <a href="wiki.ros.org/mbf_abstract_core">mbf_abstract_core</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
