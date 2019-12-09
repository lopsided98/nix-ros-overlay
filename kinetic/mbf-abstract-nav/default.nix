
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dynamic-reconfigure, std-msgs, std-srvs, tf, actionlib, catkin, mbf-utility, mbf-abstract-core, actionlib-msgs, roscpp, mbf-msgs, nav-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-mbf-abstract-nav";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/kinetic/mbf_abstract_nav/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "0e34de9c44d226c112ab14053f66015b77f52e79c5f76fb067af2d7c1e08f494";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure std-msgs std-srvs actionlib tf mbf-utility mbf-abstract-core actionlib-msgs roscpp mbf-msgs nav-msgs xmlrpcpp ];
  propagatedBuildInputs = [ geometry-msgs dynamic-reconfigure std-msgs std-srvs tf actionlib mbf-utility mbf-abstract-core actionlib-msgs roscpp mbf-msgs nav-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_abstract_nav package contains the abstract navigation server implementation of Move Base Flex (MBF). The abstract navigation server is not bound to any map representation. It provides the actions for planning, controlling and recovering. MBF loads all defined plugins at the program start. Therefor, it loads all plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions.'';
    license = with lib.licenses; [ "3-Clause BSD" ];
  };
}
