
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, catkin, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nav-core";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/kinetic/nav_core/1.14.4-0.tar.gz;
    sha256 = "79a1fb353d602ec3932a6f4e288034ece55f2b2970025c955624320fc96bd589";
  };

  buildInputs = [ std-msgs costmap-2d tf geometry-msgs ];
  propagatedBuildInputs = [ std-msgs costmap-2d tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. Currently, this package provides the BaseGlobalPlanner, BaseLocalPlanner, and RecoveryBehavior interfaces, which can be used to build actions that can easily swap their planner, local controller, or recovery behavior for new versions adhering to the same interface.'';
    #license = lib.licenses.BSD;
  };
}
