
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, cmake-modules, nav-core, catkin, tf2-ros, rostest, eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-clear-costmap-recovery";
  version = "1.16.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation-release/archive/release/melodic/clear_costmap_recovery/1.16.2-0.tar.gz;
    sha256 = "9844494fbe4443e201302dfd5a6fae1246fe452f38432696d0613c2405283572";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ costmap-2d pluginlib eigen nav-core roscpp tf2-ros ];
  nativeBuildInputs = [ costmap-2d catkin cmake-modules pluginlib eigen nav-core roscpp tf2-ros ];

  meta = {
    description = ''This package provides a recovery behavior for the navigation stack that attempts to clear space by reverting the costmaps used by the navigation stack to the static map outside of a given area.'';
    #license = lib.licenses.BSD;
  };
}
