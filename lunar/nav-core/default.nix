
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, catkin, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-nav-core";
  version = "1.15.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/lunar/nav_core/1.15.2-0.tar.gz;
    sha256 = "c07ca5f878e7b07e9ff2b5ea848014ae4b92200ed7f14fbfe0c61b0e1d469e45";
  };

  buildInputs = [ std-msgs costmap-2d tf geometry-msgs ];
  propagatedBuildInputs = [ std-msgs costmap-2d tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. Currently, this package provides the BaseGlobalPlanner, BaseLocalPlanner, and RecoveryBehavior interfaces, which can be used to build actions that can easily swap their planner, local controller, or recovery behavior for new versions adhering to the same interface.'';
    #license = lib.licenses.BSD;
  };
}
