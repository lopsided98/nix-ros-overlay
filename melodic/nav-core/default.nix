
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, catkin, tf2-ros, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav-core";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/nav_core/1.16.2-0.tar.gz;
    sha256 = "d598327496621c871e857d4fb92da871e9a7227397d849c94a7e49f993a239c3";
  };

  buildInputs = [ std-msgs costmap-2d tf2-ros geometry-msgs ];
  propagatedBuildInputs = [ std-msgs costmap-2d tf2-ros geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. Currently, this package provides the BaseGlobalPlanner, BaseLocalPlanner, and RecoveryBehavior interfaces, which can be used to build actions that can easily swap their planner, local controller, or recovery behavior for new versions adhering to the same interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
