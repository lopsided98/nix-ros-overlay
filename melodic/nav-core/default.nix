
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, std-msgs, catkin, costmap-2d, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-nav-core";
  version = "1.16.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/nav_core/1.16.3-1.tar.gz";
    name = "1.16.3-1.tar.gz";
    sha256 = "f14974b275be7674586bcfd98053f489192f5bb62bbe355d0a1bd42e8dc744e1";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d geometry-msgs tf2-ros std-msgs ];
  propagatedBuildInputs = [ costmap-2d std-msgs geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. Currently, this package provides the BaseGlobalPlanner, BaseLocalPlanner, and RecoveryBehavior interfaces, which can be used to build actions that can easily swap their planner, local controller, or recovery behavior for new versions adhering to the same interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
