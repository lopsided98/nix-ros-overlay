
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, mbf-abstract-core, mbf-msgs, mbf-utility, nav-msgs, roscpp, std-msgs, std-srvs, tf, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-mbf-abstract-nav";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/noetic/mbf_abstract_nav/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "aa56023690a79abd5b9dcce1beef94d4d323d056b2e40961ef40b16ef5963a13";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure geometry-msgs mbf-abstract-core mbf-msgs mbf-utility nav-msgs roscpp std-msgs std-srvs tf xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_abstract_nav package contains the abstract navigation server implementation of Move Base Flex (MBF). The abstract navigation server is not bound to any map representation. It provides the actions for planning, controlling and recovering. MBF loads all defined plugins at the program start. Therefor, it loads all plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
