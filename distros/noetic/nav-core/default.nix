
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, geometry-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-nav-core";
  version = "1.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/noetic/nav_core/1.17.3-1.tar.gz";
    name = "1.17.3-1.tar.gz";
    sha256 = "fd322d44ed3dcd19b75fdfa32c5603e5449cd823fcc057172bbdc91d4784e5d2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-2d geometry-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. Currently, this package provides the BaseGlobalPlanner, BaseLocalPlanner, and RecoveryBehavior interfaces, which can be used to build actions that can easily swap their planner, local controller, or recovery behavior for new versions adhering to the same interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
