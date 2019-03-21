
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, nav-core, catkin, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-twist-recovery";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_experimental-release/archive/release/kinetic/twist_recovery/0.2.1-0.tar.gz;
    sha256 = "e1c8aeafc110eacfe1b0c362a7d7ac43b4ffe40761695cd8c353467c6d5e3b7f";
  };

  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner nav-core geometry-msgs ];
  nativeBuildInputs = [ costmap-2d pluginlib base-local-planner nav-core catkin geometry-msgs ];

  meta = {
    description = ''A recovery behavior that performs a particular used-defined twist.'';
    #license = lib.licenses.BSD;
  };
}
