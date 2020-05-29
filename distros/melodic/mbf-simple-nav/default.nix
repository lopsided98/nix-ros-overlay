
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, mbf-abstract-core, mbf-abstract-nav, mbf-msgs, nav-msgs, pluginlib, roscpp, std-msgs, std-srvs, tf, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-mbf-simple-nav";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_simple_nav/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "f09d2300a7f151743be743a8ed38a69ee9c856cec9277d9d1969a796b3c6db97";
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
