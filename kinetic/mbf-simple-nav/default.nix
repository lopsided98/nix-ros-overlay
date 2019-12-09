
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mbf-abstract-nav, geometry-msgs, dynamic-reconfigure, pluginlib, std-srvs, std-msgs, tf, catkin, roscpp, actionlib, mbf-abstract-core, actionlib-msgs, tf2, mbf-msgs, nav-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-mbf-simple-nav";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/mbf_simple_nav/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "d872488879ca26cfa60f4df76cf62c74bd6a679c5c2b7a188f0930b2832096bd";
  };

  buildType = "catkin";
  buildInputs = [ mbf-abstract-nav geometry-msgs dynamic-reconfigure pluginlib std-msgs std-srvs actionlib tf roscpp mbf-abstract-core actionlib-msgs tf2 mbf-msgs nav-msgs tf2-ros ];
  propagatedBuildInputs = [ mbf-abstract-nav geometry-msgs dynamic-reconfigure pluginlib std-srvs std-msgs tf actionlib roscpp mbf-abstract-core actionlib-msgs tf2 mbf-msgs nav-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_simple_nav package contains a simple navigation server implementation of Move Base Flex (MBF). The simple navigation server is bound to no map representation. It provides actions for planning, controlling and recovering. MBF loads all defined plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions. 

        It tries to load the defined plugins which implements the defined interfaces in <a href="wiki.ros.org/mbf_abstract_core">mbf_abstract_core</a>.'';
    license = with lib.licenses; [ "3-Clause BSD" ];
  };
}
