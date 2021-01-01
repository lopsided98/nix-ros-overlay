
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, geometry-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-nav-core";
  version = "1.14.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/kinetic/nav_core/1.14.8-1.tar.gz";
    name = "1.14.8-1.tar.gz";
    sha256 = "b120f5f884dcea79e6f5cfe98142b4f98d7fe18dcfdff5d25595dd79ad0a9e4b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d geometry-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. Currently, this package provides the BaseGlobalPlanner, BaseLocalPlanner, and RecoveryBehavior interfaces, which can be used to build actions that can easily swap their planner, local controller, or recovery behavior for new versions adhering to the same interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
