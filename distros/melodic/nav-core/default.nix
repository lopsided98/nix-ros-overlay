
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, geometry-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-nav-core";
  version = "1.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/nav_core/1.16.4-1.tar.gz";
    name = "1.16.4-1.tar.gz";
    sha256 = "e8d636295cb999749982295ead8e6a6031fc634d23b0bb8a1c7dd347606031b3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-2d geometry-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. Currently, this package provides the BaseGlobalPlanner, BaseLocalPlanner, and RecoveryBehavior interfaces, which can be used to build actions that can easily swap their planner, local controller, or recovery behavior for new versions adhering to the same interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
